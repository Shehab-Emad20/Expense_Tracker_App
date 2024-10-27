import 'package:expense_tracker/widgets/expense_list/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExpensesApp());
}

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorScheme: kColorScheme,
            appBarTheme: AppBarTheme(
              backgroundColor: kColorScheme.onPrimaryContainer,
              foregroundColor: kColorScheme.primaryContainer,
            )),
        debugShowCheckedModeBanner: false,
        home: const Expenses());
  }
}
