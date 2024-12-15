import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_expense_tracker/generated/expense.pb.dart';
import 'package:personal_expense_tracker/services/expense.tracker.client.dart';

class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key});

  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final List<String> _dropdownItems = [
    'FOOD',
    'TRANSPORT',
    'EDUCATION',
    'SHOPPING',
    'ENTERTAINMENT',
    'BILLS',
    'HEALTH',
    'OTHER'
  ];
  late DateTime _selectedDate;
  String? _selectedCategory;

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                  hintText: 'Ex: Lunch',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter title';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _amountController,
                decoration: const InputDecoration(
                  labelText: 'Amount',
                  hintText: 'Ex: 50.00',
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter amount';
                  }
                  final double? parsedValue = double.tryParse(value);
                  if (parsedValue == null) {
                    return 'Please enter appropriate amount';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Category',
                  border: OutlineInputBorder(),
                ),
                value: _selectedCategory,
                items: _dropdownItems.map((String category) {
                  return DropdownMenuItem<String>(
                      value: category, child: Text(category));
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCategory = newValue;
                  });
                },
                validator: (value) =>
                    value == null ? 'Please select a category' : null,
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _dateController,
                decoration: const InputDecoration(
                    labelText: 'Select Date', border: OutlineInputBorder()),
                readOnly: true,
                onTap: () async {
                  final DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101));
                  if (pickedDate != null) {
                    setState(() {
                      _selectedDate = pickedDate;
                      _dateController.text =
                          "${_selectedDate!.year}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.day.toString().padLeft(2, '0')}";
                    });
                  }
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a date';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState?.save();
                    try {
                      Expense expense = Expense()
                        ..title = _titleController.text
                        ..amount = double.parse(_amountController.text.trim())
                        ..category = ExpenseCategoryExtension.fromString(
                            _selectedCategory!)
                        ..date = _dateController.text;

                      print('Adding:\n');
                      print(expense);

                      await ExpenseClient().createExpense(expense);

                      _titleController.clear();
                      _amountController.clear();
                      _dateController.clear();
                      setState(() {
                        _selectedCategory = null;
                      });

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Successfully Added!')),
                      );
                    } catch (e) {
                      print('Error in adding expense: $e');

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content:
                              Text('Error adding expense. Please try again.'),
                        ),
                      );
                    }
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension ExpenseCategoryExtension on ExpenseCategory {
  static ExpenseCategory fromString(String category) {
    switch (category) {
      case 'FOOD':
        return ExpenseCategory.FOOD;
      case 'TRANSPORT':
        return ExpenseCategory.TRANSPORT;
      case 'EDUCATION':
        return ExpenseCategory.EDUCATION;
      case 'SHOPPING':
        return ExpenseCategory.SHOPPING;
      case 'ENTERTAINMENT':
        return ExpenseCategory.ENTERTAINMENT;
      case 'BILLS':
        return ExpenseCategory.BILLS;
      case 'HEALTH':
        return ExpenseCategory.HEALTH;
      case 'OTHER':
        return ExpenseCategory.OTHER;
      default:
        throw ArgumentError('Unknown category: $category');
    }
  }
}
