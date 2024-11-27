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
            expense_pb2.Expense(title='Lunch', amount=34.50, category=1, date="wednesday"),
            expense_pb2.Expense(title='Dinner', amount=100.00, category=2, date="friday"),
        ]
        # print(sample_expense)
        return expense_pb2.ListExpensesResponse(expenses=sample_expense_list)

    def CreateExpenses(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def DeleteExpenses(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def UpdateExpenses(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetSummary(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')
    
def serve():
    port = "50051"
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    expense_pb2_grpc.add_ExpenseTrackerServicer_to_server(ExpenseTrackerServicer(), server)
    server.add_insecure_port("[::]:" + port)
    server.start()
    print("Server started, listening on " + port)
    server.wait_for_termination()

if __name__ == "__main__":
    logging.basicConfig()
    serve()
