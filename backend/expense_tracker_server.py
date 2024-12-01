from concurrent import futures
import logging
import math
import time

import grpc
import expense_pb2
import expense_pb2_grpc

class ExpenseTrackerServicer(expense_pb2_grpc.ExpenseTrackerServicer):

    def ListExpenses(self, request, context):
        sample_expense_list = [
            expense_pb2.Expense(title='Lunch', amount=34.50, category=expense_pb2.FOOD, date="wednesday"),
            expense_pb2.Expense(title='Dinner', amount=100.00, category=expense_pb2.FOOD, date="friday"),
        ]
        print(f"ListExpenses:\n{request}")
        return expense_pb2.ListExpensesResponse(expenses=sample_expense_list)

    def CreateExpenses(self, request, context):
        print(f"CreateExpenses:\n{request}")
        return expense_pb2.CreateExpensesResponse(id=10, error="none")

    def DeleteExpenses(self, request, context):
        print(f"DeleteExpenses:\n{request}")
        return expense_pb2.DeleteExpensesResponse(success=True)

    def UpdateExpenses(self, request, context):
        print(f"UpdateExpenses:\n{request}")
        return expense_pb2.UpdateExpensesResponse(success=False)

    def GetSummary(self, request, context):
        sample_expense_list = [
            expense_pb2.Expense(title='Lunch-Summary', amount=34.50, category=expense_pb2.TRAVEL, date="wednesday"),
            expense_pb2.Expense(title='Dinner-Summary', amount=100.00, category=expense_pb2.TRAVEL, date="friday"),
        ]
        print(f"GetSummary:\n{request}")
        return expense_pb2.GetSummaryResponse(expenses=sample_expense_list)
    
def serve():
    port = "50051"
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    expense_pb2_grpc.add_ExpenseTrackerServicer_to_server(ExpenseTrackerServicer(), server)
    server.add_insecure_port("[::]:" + port)
    server.start()
    print("Server started, listening on " + port + "!\n")
    server.wait_for_termination()

if __name__ == "__main__":
    logging.basicConfig()
    serve()
