import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  void dispose() {
    titleController.dispose();
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          TextField(
            controller: amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixText: '\$ ',
              label: Text('Amount'),
            ),
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Cancel')),
              ElevatedButton(
                  onPressed: () {}, child: const Text('Save Expense'))
            ],
          )
        ],
      ),
    );
  }
}
