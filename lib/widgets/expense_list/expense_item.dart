import 'package:expense_tracker/model/expenses.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expenses, {super.key});
  final Expense expenses;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            children: [
              Text(expenses.title),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text('\$${expenses.amount.toStringAsFixed(2)}'),
                  const Spacer(),
                  Row(
                    children: [
                      Icon(categoryIcons[expenses.category]),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(expenses.formattedDate)
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
