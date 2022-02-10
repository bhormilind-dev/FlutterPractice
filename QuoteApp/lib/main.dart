import 'package:flutter/material.dart';
import 'package:quote_app/_common/_models/Quotes.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ) );
}

class MyApp extends StatelessWidget {

  List<Quotes> quotes = [
    Quotes(text: 'Never Give Up', author: 'Unknown'),
    Quotes(text: 'Fight hard', author: 'Unknown Author'),
    Quotes(text: 'Be Smart', author: 'Unknown'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Quote Application'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
        elevation: 0.0,
      ),
      body:  Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: quotes.map((e) => Text('${e.text} - ${e.author}', style: TextStyle(
            color: Colors.white,
            fontSize: 20.0
          ),)).toList()
        ),
      ),
    );
  }
}
