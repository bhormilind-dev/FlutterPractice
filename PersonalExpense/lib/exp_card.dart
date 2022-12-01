import 'package:flutter/material.dart';

class ExpenseCard extends StatelessWidget {
  final void Function(String, String) addAction;

  final  titleController = TextEditingController();
  final  amountController = TextEditingController();

  ExpenseCard({required this.addAction, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child:Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Colors.purple)
        ),

        elevation: 5,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Title', ),
                autocorrect: true,
                cursorColor: Colors.purple,
                controller: titleController,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Amount'),
                autocorrect: true,
                cursorColor: Colors.purple,
                controller: amountController,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ElevatedButton(
                    onPressed: () =>  addAction(titleController.text, amountController.text),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: const StadiumBorder()
                    ),
                    child: const Text('Add Expense')
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
