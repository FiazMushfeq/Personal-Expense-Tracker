import 'package:flutter/material.dart';
import 'package:expense_tracker/pages/expense_page.dart';
import 'package:expense_tracker/pages/home_page.dart';
import 'package:expense_tracker/pages/summary_page.dart';
import 'package:expense_tracker/services/expense.tracker.client.dart';

class WidgetTree extends StatefulWidget {
  final bool isDarkMode;
  final void Function(bool) onThemeToggle;
  const WidgetTree({
    super.key,
    required this.isDarkMode,
    required this.onThemeToggle,
  });

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  // Start with home page
  int currentPage = 0;

  List<Widget> pages = [
    HomePage(expenseClient: ExpenseClient()),
    const ExpensePage(),
    SummaryPage(expenseClient: ExpenseClient()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            icon: Icon(
              !widget.isDarkMode ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: () {
              widget.onThemeToggle(!widget.isDarkMode);
            },
          ),
        ],
      ),
      body: pages.elementAt(currentPage),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.price_check), label: 'Expense'),
          NavigationDestination(icon: Icon(Icons.summarize), label: 'Summary'),
        ],
        selectedIndex: currentPage,
        onDestinationSelected: (value) {
          setState(() {
            currentPage = value;
          });
        },
      ),
    );
  }
}
