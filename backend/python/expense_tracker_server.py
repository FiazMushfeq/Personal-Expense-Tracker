from concurrent import futures
import logging
import math
import time

import grpc
from generated.expense_pb2 import ExpenseCategory, Expense, GetExpenseResponse, ListExpensesResponse, UpdateExpenseResponse, DeleteExpenseResponse, CreateExpenseResponse, SuccessStatus
import generated.expense_pb2_grpc as expense_pb2_grpc

from database import PostgresDB

db = PostgresDB(db_name="postgres", user="postgres", password="password")

class ExpenseTrackerServicer(expense_pb2_grpc.ExpenseTrackerServicer):
    
    def CreateExpense(self, request, context):
        print(f"Create Expense's Request:\n{request}\n")
        expense = request.expense
        try:
            new_id = db.insert_expense(
                title=expense.title,
                amount=expense.amount,
                category=expense.category,
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
            del self.expense_dict[request.id]
            response = DeleteExpenseResponse(
                status=SuccessStatus(
                    code=1,
                    msg="GOOD-DeleteExpense"
                )
            )
        except Exception as e:
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
            self.expense_dict[request.expense.id]
            self.expense_dict[request.expense.id] = request.expense
            response = UpdateExpenseResponse(
                status=SuccessStatus(
                    code=1,
                    msg="GOOD-UpdateExpense"
                )
            )
        except Exception as e:
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
            self.expense_dict[request.id]
            response = GetExpenseResponse(
                expense=self.expense_dict[request.id],
                status=SuccessStatus(
                    code=1,
                    msg="GOOD-GetExpense"
                )
            )
        except Exception as e:
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
        if request.date.strip() == "":
            expenses_data = db.list_expenses()
        else:
            expenses_data = db.list_expenses(date=request.date)
        expenses = [
            Expense(
                id=row["id"],
                title=row["title"],
                amount=row["amount"],
                category=row["category"],
                date=row["expense_date"]
            )
            for row in expenses_data
        ]
        return ListExpensesResponse(expenses=expenses)
    
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
