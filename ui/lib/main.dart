import 'package:flutter/material.dart';
import 'package:personal_expense_tracker/widget_tree.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Expense Tracker',
      home: WidgetTree(),
    );
  }
}
