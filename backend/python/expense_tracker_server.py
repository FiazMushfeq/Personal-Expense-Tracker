from concurrent import futures
import logging
import math
import time

import grpc
import expense_pb2
import expense_pb2_grpc

class ExpenseTrackerServicer(expense_pb2_grpc.ExpenseTrackerServicer):
    
    iterator = 0
    expense_dict = {}
    
    def CreateExpense(self, request, context):
        self.iterator += 1
        expense = expense_pb2.Expense(
            id=self.iterator,
            title=request.expense.title,
            amount=request.expense.amount,
            category=request.expense.category,
            date=request.expense.date
        )
        self.expense_dict[self.iterator] = expense
        
        response = expense_pb2.CreateExpenseResponse(
            id=self.iterator,
            status=expense_pb2.SuccessStatus(
                code=1,
                msg="GOOD-CreateExpense"
            )
        )
        return response
    
    def DeleteExpense(self, request, context):
        try:
            del self.expense_dict[request.id]
            response = expense_pb2.DeleteExpenseResponse(
                status=expense_pb2.SuccessStatus(
                    code=1,
                    msg="GOOD-DeleteExpense"
                )
            )
        except Exception as e:
            response = expense_pb2.DeleteExpenseResponse(
                status=expense_pb2.SuccessStatus(
                    code=2,
                    msg="BAD-DeleteExpense"
                )
            )
        return response
    
    def UpdateExpense(self, request, context):
        try:
            self.expense_dict[request.expense.id]
            self.expense_dict[request.expense.id] = request.expense
            response = expense_pb2.UpdateExpenseResponse(
                status=expense_pb2.SuccessStatus(
                    code=1,
                    msg="GOOD-UpdateExpense"
                )
            )
        except Exception as e:
            response = expense_pb2.UpdateExpenseResponse(
                status=expense_pb2.SuccessStatus(
                    code=2,
                    msg="BAD-UpdateExpense"
                )
            )
        return response
    
    def GetExpense(self, request, context):
        try:
            self.expense_dict[request.id]
            response = expense_pb2.GetExpenseResponse(
                expense=self.expense_dict[request.id],
                status=expense_pb2.SuccessStatus(
                    code=1,
                    msg="GOOD-GetExpense"
                )
            )
        except Exception as e:
            response = expense_pb2.GetExpenseResponse(
                expense=expense_pb2.Expense(),
                status=expense_pb2.SuccessStatus(
                    code=2,
                    msg="BAD-GetExpense"
                )
            )
        return response
    
    def ListExpenses(self, request, context):
        expenses_dict = self.expense_dict
        expenses_ids = [expense_value for expense_value in expenses_dict.values() if expense_value.date == request.date]
        response = expense_pb2.ListExpensesResponse(
            expenses=expenses_ids
        )
        return response
    
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
