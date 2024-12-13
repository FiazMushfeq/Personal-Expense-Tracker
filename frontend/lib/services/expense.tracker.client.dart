import 'package:grpc/grpc.dart';
import 'expense.pbgrpc.dart';

class ExpenseClient {
  final ClientChannel channel;
  late final ExpenseTrackerClient stub;

  ExpenseClient()
      : channel = ClientChannel(
          'localhost',
          port: 50051,
          options: const ChannelOptions(
            credentials: ChannelCredentials.insecure(),
          ),
        ) {
    stub = ExpenseTrackerClient(channel);
  }

  Future<void> createExpense(Expense expense) async {
    final request = CreateExpenseRequest()..expense = expense;
    
    try {
      final response = await stub.createExpense(request);
    } catch(e) {
      print('Error-Create: $e');
    }
  }

  Future<void> deleteExpense(int id) async {
    final request = DeleteExpenseRequest()..id = id;
    
    try {
      final response = await stub.deleteExpense(request);
    } catch(e) {
      print('Error-Delete: $e');
    }
  }

  Future<void> updateExpense(Expense expense) async {
    final request = UpdateExpenseRequest()..expense = expense;

    try {
      final response = await stub.updateExpense(request);
    } catch(e) {
      print('Error-Update: $e');
    }
  }

  Future<void> getExpense(int id) async {
    final request = GetExpenseRequest()..id = id;
  
    try {
      final response = await stub.getExpense(request);
    } catch(e) {
      print('Error-Get: $e');
    }
  }

  Future<void> listExpenses(String date) async {
    final request = ListExpensesRequest()..date = date;
    
    try {
      final response = await stub.listExpenses(request);
    } catch(e) {
      print('Error-List: $e');
    }
  }

  Future<void> shutdown() async {
    await channel.shutdown();
  }
}

void main() async {
  print('\nStarted Client!\n');
  final client = ExpenseClient();
  Expense expense = Expense(
    id: 1,
    title: "expense title",
    amount: 50,
    category: ExpenseCategory.EDUCATION,
    date: "12/8/2024",
  );

  await client.createExpense(expense);
  // await client.deleteExpense(1);
  // await client.updateExpense(expense);
  // await client.getExpense(1);
  // await client.getExpense(2);
  await client.listExpenses(expense.date);

  await client.shutdown();
}
