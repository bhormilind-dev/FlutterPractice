// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:personal_expense/_modals/transaction.dart';
import 'package:personal_expense/exp_list.dart';
import 'package:personal_expense/graph.dart';

import 'exp_card.dart';

void main() => runApp(MainApp());


class MainApp extends StatefulWidget {
  MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
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
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text(
              "Personal Expense App"
          ),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Graph(),
            ExpenseCard(addAction: _addExpense),
            ExpenseList(transactions: transactions)
          ],
        ),
      ),
    );
  }
}
