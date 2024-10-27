import 'package:expense_tracker/widgets/expense_list/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExpensesApp());
}

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDrakColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 5, 99, 125),
  brightness: Brightness.dark, // Switch to dark mode.
);

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(colorScheme: kDrakColorScheme),
      theme: ThemeData(
        colorScheme: kColorScheme,
        // useMaterial3: true, // Enables Material 3 for modern UI design.
        appBarTheme: AppBarTheme(
          backgroundColor: kColorScheme.primary,
          foregroundColor: kColorScheme.onPrimary,
        ),
        cardTheme: CardTheme(
          color: kDrakColorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(
              horizontal:
                  Theme.of(context).cardTheme.margin?.horizontal ?? 8.0),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDrakColorScheme.primaryContainer,
            foregroundColor: kDrakColorScheme.onPrimaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 16,
              ),
            ),
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const Expenses(),
    );
  }
}
