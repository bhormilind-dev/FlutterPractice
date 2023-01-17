import 'package:flutter/material.dart';

class ExpenseCard extends StatefulWidget {
  final void Function(String, String) addAction;


  const ExpenseCard({required this.addAction, Key? key}) : super(key: key);

  @override
  State<ExpenseCard> createState() => _ExpenseCardState();
}

class _ExpenseCardState extends State<ExpenseCard> {
  final  titleController = TextEditingController();
  final  amountController = TextEditingController();

  bool _isNumeric(String s) {
    return double.tryParse(s) != null;
  }

  void _submitData() {
    String title = titleController.text;
    String amount = amountController.text;

    if(title.isEmpty ||  ( _isNumeric(amount) &&  double.parse(amount)<= 0)) {
      return;
    }

    widget.addAction(title, amount);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              autocorrect: true,
              cursorColor: Theme.of(context).primaryColor,
              controller: titleController,
              onSubmitted: (_) => _submitData(),
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              autocorrect: true,
              cursorColor: Theme.of(context).primaryColor,
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => _submitData(),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: ElevatedButton(
                  onPressed: () =>  _submitData(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).accentColor,
                    shape: const StadiumBorder()
                  ),
                  child: const Text('Add Expense')
              ),
            )
          ],
        ),
      ),
    );
  }
}
