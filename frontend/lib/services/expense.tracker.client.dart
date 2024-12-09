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

  Future<int> createExpense(Expense expense) async {
    final request = CreateExpenseRequest()..expense = expense;
    print('CreateExpenseRequest: $request');
    final response = await stub.createExpense(request);
    print('CreateExpenseResponse: $response');
    return response.id;
  }

  Future<void> shutdown() async {
    await channel.shutdown();
  }
}

void main() async {
  print('Started Client!');
  final client = ExpenseClient();
  Expense expense = Expense(
    id: 1,
    title: "expense title",
    amount: 50,
    category: ExpenseCategory.EDUCATION,
    date: "12/8/2024",
  );
  print(expense.title);
  await client.shutdown();
}
