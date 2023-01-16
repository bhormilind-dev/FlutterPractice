// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:personal_expense/_modals/transaction.dart';
import 'package:personal_expense/exp_list.dart';
import 'package:personal_expense/graph.dart';
import 'package:personal_expense/user_transaction.dart';

import 'exp_card.dart';

void main() => runApp(MainApp());


class MainApp extends StatelessWidget {
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
          children: const [
            Graph(),
            UserTransaction()
          ],
        ),
      ),
    );
  }
}
