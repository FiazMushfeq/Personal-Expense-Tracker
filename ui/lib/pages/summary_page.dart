import 'package:flutter/material.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary Page'),
      ),
    );
  }
}
