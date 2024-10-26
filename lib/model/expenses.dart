import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Expenses {
  final String title, id;
  final double amount;
  final DateTime date;

  Expenses({required this.title, required this.amount, required this.date})
      : id = uuid.v4();
}
