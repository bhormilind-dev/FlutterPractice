import 'package:flutter/material.dart';
import 'package:quention_answer/answer.dart';
import 'package:quention_answer/question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }

}

class MyAppState extends State<MyApp>{

  var quesIndex = 0;

  var questions = [
    'what\'s your name ?',
    'what\'s your favorite color ?',
  ];

  void _answerQues() {

    setState(() {
      if(quesIndex < questions.length - 1 ) {
        quesIndex = quesIndex + 1;
      }
    });
    // print(quesIndex);
  }

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(title: const Text('Playlist Application')),
       body: Column(
         children: [
           Question(questions[quesIndex]),
           Answer(_answerQues, 'Answer 1'),
           Answer(_answerQues, 'Answer 2'),
           Answer(_answerQues, 'Answer 3'),
           Answer(_answerQues, 'Answer 4'),
         ],
       ),
     )
   );
  }
  
}