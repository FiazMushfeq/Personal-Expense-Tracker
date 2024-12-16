import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:personal_expense_tracker/generated/expense.pb.dart';
import 'package:personal_expense_tracker/services/expense.tracker.client.dart';

class SummaryPage extends StatelessWidget {
  final ExpenseClient expenseClient;
  const SummaryPage({required this.expenseClient, super.key});

  Color _colorCategory(ExpenseCategory category) {
    switch (category) {
      case ExpenseCategory.FOOD:
        return Colors.blue;
      case ExpenseCategory.TRANSPORT:
        return Colors.green;
      case ExpenseCategory.SHOPPING:
        return Colors.red;
      case ExpenseCategory.ENTERTAINMENT:
        return Colors.purple;
      case ExpenseCategory.BILLS:
        return Colors.yellow;
      case ExpenseCategory.EDUCATION:
        return Colors.orange;
      case ExpenseCategory.HEALTH:
        return Colors.pink;
      default:
        return Colors.grey;
    }
  }

  Map<ExpenseCategory, double> expensesByCategory() {
    Map<ExpenseCategory, double> categoryTotals = {};
    for (int i = 1; i <= expenseClient.total; i++) {
      try {
        Expense current = expenseClient.getExpense(i) as Expense;
        print(current.category);
        print(current.amount);
        categoryTotals[current.category] =
            current.amount + (categoryTotals[current.category] ?? 0);
      } catch (e) {
        print("Expense with this ID doesn't exist: $e");
      }
    }
    print("Category Totals: $categoryTotals");
    return categoryTotals;
  }

  @override
  Widget build(BuildContext context) {
    Map<ExpenseCategory, double> categoryTotals = expensesByCategory();
    print(categoryTotals);
    List<PieChartSectionData> sections1 = categoryTotals.entries.map((entry) {
      return PieChartSectionData(
        color: _colorCategory(entry.key),
        value: entry.value,
        title: entry.key.toString().split('.').last,
      );
    }).toList();

    List<PieChartSectionData> sections = [
      PieChartSectionData(color: Colors.blue, value: 25, title: 'Food'),
      PieChartSectionData(color: Colors.green, value: 20, title: 'Transport'),
      PieChartSectionData(color: Colors.red, value: 15, title: 'Shopping'),
      PieChartSectionData(
          color: Colors.purple, value: 10, title: 'Entertainment'),
      PieChartSectionData(color: Colors.yellow, value: 30, title: 'Bills'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary Page'),
        centerTitle: true,
      ),
      body: Center(
        child: PieChart(
          PieChartData(
            sections: sections,
            centerSpaceRadius: 40,
            borderData: FlBorderData(show: false),
            sectionsSpace: 2,
          ),
        ),
      ),
    );
  }
}
