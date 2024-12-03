import 'package:flutter/material.dart';
import 'package:personal_expense_tracker/pages/expense_page.dart';
import 'package:personal_expense_tracker/pages/home_page.dart';
import 'package:personal_expense_tracker/pages/summary_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  // Start with home page
  int currentPage = 0;

  List<Widget> pages = const [
    HomePage(),
    ExpensePage(),
    SummaryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
