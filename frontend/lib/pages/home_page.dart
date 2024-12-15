import 'package:flutter/material.dart';
import 'package:personal_expense_tracker/generated/expense.pb.dart';
import 'package:personal_expense_tracker/services/expense.tracker.client.dart';

class HomePage extends StatelessWidget {
  final ExpenseClient expenseClient;
  const HomePage({required this.expenseClient, Key? key}) : super(key: key);

  Future<List<Expense>> _fetchExpenses() async {
    return await expenseClient.listExpenses("2024-12-15");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to the Home Page!'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Current Month\'s Expense:',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          const Text('CURRENT MONTH DATA'),
          const SizedBox(height: 16.0),
          const Text(
            'Daily Expenses:',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: FutureBuilder<List<Expense>>(
              future: _fetchExpenses(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator(); // Loading indicator
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Text('No expenses found.');
                } else {
                  final expenses = snapshot.data!;
                  return ListView.builder(
                    itemCount: expenses.length,
                    itemBuilder: (context, index) {
                      final expense = expenses[index];
                      return ListTile(
                        title: Text(expense.title),
                        subtitle: Text('${expense.category} - \$${expense.amount.toStringAsFixed(2)}'),
                        trailing: Text(expense.date),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      )),
    );
  }
}
