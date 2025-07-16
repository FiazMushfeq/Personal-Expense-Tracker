import 'dart:io';
import 'package:flutter/material.dart';
import 'package:personal_expense_tracker/widget_tree.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await startBackendServer();
  runApp(const MainApp());
}

Future<void> startBackendServer() async {
  try {
    // Check if server is already running
    final socket = await Socket.connect('localhost', 50051);
    socket.destroy();
    print('Backend server is already running');
    return;
  } catch (e) {
    print('Backend server not running, starting it...');
  }

  try {
    // Start the Python server
    final process = await Process.start(
      'python3',
      ['expense_tracker_server.py'],
      workingDirectory: '../backend/python',
      mode: ProcessStartMode.detached,
    );

    print('Backend server started with PID: ${process.pid}');

    // Wait a moment for the server to start
    await Future.delayed(const Duration(seconds: 3));

    // Verify the server is running
    try {
      final socket = await Socket.connect('localhost', 50051);
      socket.destroy();
      print('Backend server is now running and accessible');
    } catch (e) {
      print('Failed to connect to backend server after starting: $e');
    }
  } catch (e) {
    print('Failed to start backend server: $e');
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Expense Tracker',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF121212),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1F1F1F),
          foregroundColor: Colors.white,
        ),
        cardTheme: const CardThemeData(
          color: Color(0xFF1F1F1F),
        ),
        listTileTheme: const ListTileThemeData(
          textColor: Colors.white,
          iconColor: Colors.white70,
        ),
      ),
      themeMode: ThemeMode.dark,
      home: const WidgetTree(),
    );
  }
}
