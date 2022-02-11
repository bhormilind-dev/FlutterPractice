import 'package:flutter/material.dart';
import 'package:quote_app/_common/_models/Quote.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ) );
}

class MyApp extends StatelessWidget {

  List<Quotes> quotes = [
    Quotes(text: 'Never Give Up', author: 'Unknown'),
    Quotes(text: 'Fight hard adasdasdas dasasd asd asd asd', author: 'Unknown Author'),
    Quotes(text: 'Be Smart', author: 'Unknown'),
  ];

  Widget getQuoteWidget(Quotes quote) {
    return Card(
      color: Colors.grey[850],
      margin: const EdgeInsets.fromLTRB(16.0, 16.8, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0,0,10,10),
        child: Column(
          children: [
              ListTile(
                leading: const Icon(Icons.wb_sunny_outlined, color: Colors.greenAccent),
                title: Text(quote.text,
                style: const TextStyle(
                  fontSize: 15.0,
                  color: Colors.white
                )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(' - ${quote.author}',
                    style: const TextStyle(
                        fontSize: 11.0,
                        color: Colors.amber,
                        fontStyle: FontStyle.italic
                    )),
                ],
              ),
          ],
        ),
      ),
    );
  }


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
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: quotes.map((e) => getQuoteWidget(e)).toList()
        ),
    );
  }
}
