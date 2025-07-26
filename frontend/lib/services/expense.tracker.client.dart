import 'dart:math';

import '../generated/expense.pbgrpc.dart';

// Conditional import for platform-specific channel
import 'client_channel_io.dart'
    if (dart.library.html) 'client_channel_web.dart';

class ExpenseClient {
  final channel;
  late final ExpenseTrackerClient stub;
  int total = 0;

  ExpenseClient() : channel = getChannel() {
    stub = ExpenseTrackerClient(channel);
  }

  Future<SuccessStatus> createExpense(Expense expense) async {
    final request = CreateExpenseRequest()..expense = expense;
    // print(total);

    try {
      final response = await stub.createExpense(request);
      // print(response);
      total += 1;
      // print("Total Count: $total");
      return response.status;
    } catch (e) {
      print('Error-Create: $e');
      return SuccessStatus()..code = 1;
    }
  }

  Future<void> deleteExpense(int id) async {
    final request = DeleteExpenseRequest()..id = id;

    try {
      final response = await stub.deleteExpense(request);
      // print(response);
    } catch (e) {
      print('Error-Delete: $e');
    }
  }

  Future<void> updateExpense(Expense expense) async {
    final request = UpdateExpenseRequest()..expense = expense;

    try {
      final response = await stub.updateExpense(request);
      // print(response);
    } catch (e) {
      print('Error-Update: $e');
    }
  }

  Future<Expense> getExpense(int id) async {
    final request = GetExpenseRequest()..id = id;

    try {
      final response = await stub.getExpense(request);
      // print(response);
      return response.expense;
    } catch (e) {
      print('Error-Get: $e');
      return Expense();
    }
  }

  Future<List<Expense>> listExpenses(String date) async {
    final request = ListExpensesRequest()..date = date;
    // print(request);
    try {
      final response = await stub.listExpenses(request);
      // print(response);
      return response.expenses;
    } catch (e) {
      print('Error-List: $e');
      return [];
    }
  }

  Future<void> shutdown() async {
    print("Shutting Down Client!\n");
    await channel.shutdown();
  }
}

void main() async {
  print('\nStarted Client!\n');
  final client = ExpenseClient();
  Expense expense = Expense(
    id: 1,
    title: "expense #",
    amount: Random().nextDouble() * 100 + 1,
    category: ExpenseCategory.EDUCATION,
    date: "12/8/2024",
  );

  await client.createExpense(expense);
  await client.createExpense(expense);
  await client.createExpense(expense);
  // await client.deleteExpense(1);
  // await client.updateExpense(expense);
  await client.getExpense(1);
  await client.getExpense(2);
  await client.listExpenses(expense.date);
  await client.listExpenses("");
  print(client.total);

  await client.shutdown();
}
