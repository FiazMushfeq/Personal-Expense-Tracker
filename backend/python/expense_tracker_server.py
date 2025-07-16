from concurrent import futures
import logging
import math
import time

import grpc
from generated.expense_pb2 import ExpenseCategory, Expense, GetExpenseResponse, ListExpensesResponse, UpdateExpenseResponse, DeleteExpenseResponse, CreateExpenseResponse, SuccessStatus
import generated.expense_pb2_grpc as expense_pb2_grpc

from database import PostgresDB

# Initialize database connection using environment variables
db = PostgresDB()

# Category mapping between string names and enum values
CATEGORY_TO_ENUM = {
    'Food': ExpenseCategory.FOOD,
    'Transportation': ExpenseCategory.TRANSPORT,
    'Shopping': ExpenseCategory.SHOPPING,
    'Entertainment': ExpenseCategory.ENTERTAINMENT,
    'Bills': ExpenseCategory.BILLS,
    'Education': ExpenseCategory.EDUCATION,
    'Health': ExpenseCategory.HEALTH,
    'Other': ExpenseCategory.OTHER
}

ENUM_TO_CATEGORY = {
    ExpenseCategory.FOOD: 'Food',
    ExpenseCategory.TRANSPORT: 'Transportation',
    ExpenseCategory.SHOPPING: 'Shopping',
    ExpenseCategory.ENTERTAINMENT: 'Entertainment',
    ExpenseCategory.BILLS: 'Bills',
    ExpenseCategory.EDUCATION: 'Education',
    ExpenseCategory.HEALTH: 'Health',
    ExpenseCategory.OTHER: 'Other'
}

def get_category_string(category_enum):
    return ENUM_TO_CATEGORY.get(category_enum, 'Other')

def get_category_enum(category_string):
    return CATEGORY_TO_ENUM.get(category_string, ExpenseCategory.OTHER)

class ExpenseTrackerServicer(expense_pb2_grpc.ExpenseTrackerServicer):
    
    def CreateExpense(self, request, context):
        print(f"Create Expense's Request:\n{request}\n")
        expense = request.expense
        try:
            new_id = db.insert_expense(
                description=expense.title,
                amount=expense.amount,
                category=get_category_string(expense.category),
                date=expense.date
            )
            return CreateExpenseResponse(
                id=new_id,
                status=SuccessStatus(
                    code=0,
                    msg="SUCCESS --> CreateExpense"
                )
            )
        except Exception as e:
            return CreateExpenseResponse(
                id=-1,
                status=SuccessStatus(
                    code=1,
                    msg="FAILURE --> CreateExpense"
                )
            )
    
    def DeleteExpense(self, request, context):
        print(f"Delete Expense's Request:\n{request}\n")
        try:
            success = db.delete_expense(request.id)
            if success:
                response = DeleteExpenseResponse(
                    status=SuccessStatus(
                        code=1,
                        msg="GOOD-DeleteExpense"
                    )
                )
            else:
                response = DeleteExpenseResponse(
                    status=SuccessStatus(
                        code=2,
                        msg="Expense not found"
                    )
                )
        except Exception as e:
            print(f"Error in DeleteExpense: {e}")
            response = DeleteExpenseResponse(
                status=SuccessStatus(
                    code=2,
                    msg="BAD-DeleteExpense"
                )
            )
        return response
    
    def UpdateExpense(self, request, context):
        print(f"Update Expense's Request:\n{request}\n")
        try:
            expense = request.expense
            success = db.update_expense(
                expense_id=expense.id,
                description=expense.title,
                amount=expense.amount,
                category=get_category_string(expense.category),
                date=expense.date
            )
            if success:
                response = UpdateExpenseResponse(
                    status=SuccessStatus(
                        code=1,
                        msg="GOOD-UpdateExpense"
                    )
                )
            else:
                response = UpdateExpenseResponse(
                    status=SuccessStatus(
                        code=2,
                        msg="Expense not found"
                    )
                )
        except Exception as e:
            print(f"Error in UpdateExpense: {e}")
            response = UpdateExpenseResponse(
                status=SuccessStatus(
                    code=2,
                    msg="BAD-UpdateExpense"
                )
            )
        return response
    
    def GetExpense(self, request, context):
        print(f"Get Expense's Request:\n{request}\n")
        try:
            expense_data = db.get_expense(request.id)
            if expense_data:
                expense = Expense(
                    id=int(expense_data["id"]),
                    title=str(expense_data["description"]),
                    amount=float(expense_data["amount"]),
                    category=get_category_enum(expense_data["category"]),
                    date=str(expense_data["expense_date"])
                )
                response = GetExpenseResponse(
                    expense=expense,
                    status=SuccessStatus(
                        code=1,
                        msg="GOOD-GetExpense"
                    )
                )
            else:
                response = GetExpenseResponse(
                    expense=Expense(),
                    status=SuccessStatus(
                        code=2,
                        msg="Expense not found"
                    )
                )
        except Exception as e:
            print(f"Error in GetExpense: {e}")
            response = GetExpenseResponse(
                expense=Expense(),
                status=SuccessStatus(
                    code=2,
                    msg="BAD-GetExpense"
                )
            )
        return response
    
    def ListExpenses(self, request, context):
        print(f"List Expenses' Request:\n{str(request).strip()}\n")
        try:
            if request.date.strip() == "":
                expenses_data = db.list_expenses()
            else:
                expenses_data = db.list_expenses(date=request.date)
            expenses = [
                Expense(
                    id=int(row["id"]),
                    title=str(row["description"]),
                    amount=float(row["amount"]),
                    category=get_category_enum(row["category"]),
                    date=str(row["expense_date"])
                )
                for row in expenses_data
            ]
            return ListExpensesResponse(expenses=expenses)
        except Exception as e:
            print(f"Error in ListExpenses: {e}")
            return ListExpensesResponse(expenses=[])
    
def serve():
    port = "50051"
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    expense_pb2_grpc.add_ExpenseTrackerServicer_to_server(ExpenseTrackerServicer(), server)
    server.add_insecure_port("[::]:" + port)
    server.start()
    print("\nServer started, listening on " + port + "!\n")
    server.wait_for_termination()

if __name__ == "__main__":
    logging.basicConfig()
    serve()