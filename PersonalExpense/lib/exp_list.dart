import 'package:flutter/material.dart';
import 'package:personal_expense/_modals/transaction.dart';
import 'package:intl/intl.dart';

class ExpenseList extends StatelessWidget {
  final List<Transaction> transactions;

  const ExpenseList({required this.transactions, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 496,
      child:ListView.builder(
        itemBuilder: (ctx, index) {
          return Container(
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(color: Colors.purple)
                ),
                elevation: 5,
                child: Row(children: [
                  Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.purple),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(6))),
                      child: Text('\$${transactions[index].amount.toStringAsFixed(2)}',
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold))),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(transactions[index].title,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text(
                        DateFormat.yMMMd().format(transactions[index].date),
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ]),
              ));
        },
        itemCount: transactions.length,
      )
    ) ;
  }
}
