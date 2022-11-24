import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  const Question( this.question, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      child: Text(question, style: const TextStyle(fontSize: 34), textAlign: TextAlign.center),
    );
  }
}
