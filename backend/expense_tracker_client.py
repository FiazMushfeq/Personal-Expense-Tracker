from __future__ import print_function

import logging

import grpc
import expense_pb2
import expense_pb2_grpc


def run():
    # NOTE(gRPC Python Team): .close() is possible on a channel and should be
    # used in circumstances in which the with statement does not fit the needs
    # of the code.
    print("Client has been greeted!")
    with grpc.insecure_channel("localhost:50051") as channel:
        stub = expense_pb2_grpc.ExpenseTrackerStub(channel)
        
        response = stub.ListExpenses(expense_pb2.ListExpensesRequest(date="day"))
        print("\nListExpenses:")
        print('\n'.join(f"{index+1}:\n{item}" for index, item in enumerate(response.expenses)))
        
        response = stub.CreateExpenses(expense_pb2.CreateExpensesRequest(
            title='Lunch',
            amount=100.00,
            category=expense_pb2.ExpenseCategory.FOOD,
            date="monday",
        ))
        print(str(response.id) + ": " + response.error)
        
        response = stub.DeleteExpenses(expense_pb2.DeleteExpensesRequest(id=1))
        print("\n" + str(response.success))
        
        response = stub.UpdateExpenses(expense_pb2.UpdateExpensesRequest(id=5))
        print("\n" + str(response.success))
        
        response = stub.GetSummary(expense_pb2.GetSummaryRequest(category=expense_pb2.ExpenseCategory.TRAVEL))
        print("\nGetSummary:")
        print('\n'.join(f"{index+1}:\n{item}" for index, item in enumerate(response.expenses)))
        
if __name__ == "__main__":
    logging.basicConfig()
    run()