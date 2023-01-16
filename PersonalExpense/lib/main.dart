// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:personal_expense/_modals/transaction.dart';
import 'package:personal_expense/exp_list.dart';
import 'package:personal_expense/graph.dart';

import 'exp_card.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _transactions = [
    Transaction(id: 't1', title: 'New Shoe', amount: 52.2, date: DateTime.now()),
    Transaction(id: 't2', title: 'New Camera', amount: 3800, date: DateTime.now()),
  ];

  void _addExpense(String title, String amount) {
    setState(() {
      _transactions.add(Transaction(id: DateTime.now().toString(), title: title, amount: double.parse(amount), date: DateTime.now()));
    });
  }

  void _showStartTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return ExpenseCard(addAction: _addExpense );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => _showStartTransaction(context),
        ),
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.purple,
          title: const Text(
              "Personal Expense App"
          ),
          actions: [
            IconButton(
                onPressed: () => _showStartTransaction(context),
                icon: const Icon(Icons.add)
            )
          ],
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Graph(),
            ExpenseList(transactions: _transactions)
          ],
        ),
      ),
    );
  }
}
