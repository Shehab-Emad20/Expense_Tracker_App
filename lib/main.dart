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
          ),
          cardTheme: CardTheme(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: kColorScheme.primaryContainer),
          ),
          textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: kColorScheme.secondaryContainer,
                  fontSize: 14)),
        ),
        debugShowCheckedModeBanner: false,
        home: const Expenses());
  }
}
