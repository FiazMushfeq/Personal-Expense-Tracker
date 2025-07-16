import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:expense_tracker/generated/expense.pb.dart';
import 'package:expense_tracker/services/expense.tracker.client.dart';

class SummaryPage extends StatelessWidget {
  final ExpenseClient expenseClient;
  const SummaryPage({required this.expenseClient, super.key});

  Color _getColorCategory(String category) {
    switch (category) {
      case "FOOD":
        return Colors.blue;
      case "TRANSPORT":
        return Colors.green;
      case "SHOPPING":
        return Colors.red;
      case "ENTERTAINMENT":
        return Colors.purple;
      case "BILLS":
        return Colors.yellow;
      case "EDUCATION":
        return Colors.orange;
      case "HEALTH":
        return Colors.pink;
      default:
        return Colors.grey;
    }
  }

  String _getStringCategory(ExpenseCategory category) {
    switch (category) {
      case ExpenseCategory.FOOD:
        return "FOOD";
      case ExpenseCategory.TRANSPORT:
        return "TRANSPORT";
      case ExpenseCategory.SHOPPING:
        return "SHOPPING";
      case ExpenseCategory.ENTERTAINMENT:
        return "ENTERTAINMENT";
      case ExpenseCategory.BILLS:
        return "BILLS";
      case ExpenseCategory.EDUCATION:
        return "EDUCATION";
      case ExpenseCategory.HEALTH:
        return "HEALTH";
      default:
        return "OTHER/UKNOWN";
    }
  }

  List<PieChartSectionData> getSections(Map<String, double> categoryTotals) {
    return categoryTotals.entries.map((entry) {
      return PieChartSectionData(
        color: _getColorCategory(entry.key),
        value: entry.value,
        title: entry.key,
      );
    }).toList();
  }

  Future<Map<String, double>> fetchExpensesByCategory() async {
    List<Expense> allExpenses = await expenseClient.listExpenses("");
    Map<String, double> categoryTotals = {};

    for (var expenses in allExpenses) {
      try {
        categoryTotals[_getStringCategory(expenses.category)] =
            expenses.amount + (categoryTotals[_getStringCategory(expenses.category)] ?? 0);
      } catch (e) {
        print("Expense doesn't exist: $e");
      }
    }
    // print(categoryTotals);
    return categoryTotals;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary Page'),
        centerTitle: true,
      ),
      body: FutureBuilder<Map<String, double>>(
        future: fetchExpensesByCategory(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No expenses found.'));
          } else {
            List<PieChartSectionData> sections = getSections(snapshot.data!);
            return Center(
              child: PieChart(
                PieChartData(
                  sections: sections,
                  centerSpaceRadius: 40,
                  borderData: FlBorderData(show: false),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
