from __future__ import print_function

import logging

import grpc
import expense_pb2
import expense_pb2_grpc


def run():
    # NOTE(gRPC Python Team): .close() is possible on a channel and should be
    # used in circumstances in which the with statement does not fit the needs
    # of the code.
    print("Client has been greeted!\n")
    with grpc.insecure_channel("localhost:50051") as channel:
        stub = expense_pb2_grpc.ExpenseTrackerStub(channel)
        response = stub.ListExpenses(expense_pb2.ListExpensesRequest(date="day"))
        for index, item in enumerate(response.expenses, start=1):
            print(f"{index}.\n{item}")

if __name__ == "__main__":
    logging.basicConfig()
    run()