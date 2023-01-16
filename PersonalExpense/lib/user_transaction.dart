import 'package:flutter/cupertino.dart';
import './_modals/transaction.dart';
import './exp_card.dart';
import './exp_list.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {

  final List<Transaction> transactions = [
    Transaction(id: 't1', title: 'New Shoe', amount: 52.2, date: DateTime.now()),
    Transaction(id: 't2', title: 'New Camera', amount: 3800, date: DateTime.now()),
  ];

  void _addExpense(String title, String amount) {
    setState(() {
      transactions.add(Transaction(id: 't3', title: title, amount: double.parse(amount), date: DateTime.now()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpenseCard(addAction: _addExpense),
        ExpenseList(transactions: transactions)
      ],
    );
  }
}
