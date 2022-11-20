import 'package:flutter/material.dart';

void main()  => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Hello World'),
        //   backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        // ),
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        body: Center(
          child: Text('Hello World',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.grey
              )
          ),
        ),
      ),
    );
  }

}