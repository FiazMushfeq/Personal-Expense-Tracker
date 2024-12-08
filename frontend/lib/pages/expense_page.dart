import 'package:flutter/material.dart';
import 'package:personal_expense_tracker/forms/expense_form.dart';

class ExpensePage extends StatefulWidget {
  const ExpensePage({super.key});

  @override
  State<ExpensePage> createState() => _ExpensePageState();
}

class _ExpensePageState extends State<ExpensePage> {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Form'),
        centerTitle: true,
      ),
      body: const ExpenseForm(),
    );
  }
}
