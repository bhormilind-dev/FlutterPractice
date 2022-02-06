import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Center(
        child: Text('Simple App'),
      ),
      backgroundColor: Colors.teal[600],

    ),
    body: Center(
      child: Text('Hello, Welcome!',
      style: TextStyle(
       fontFamily: 'Dacing',
       fontWeight: FontWeight.w700,
       fontSize: 32.0
      )),
    ),
    floatingActionButton: FloatingActionButton(
      child: Text('Click',
      style: TextStyle(
        fontFamily: 'Dacing',
          fontWeight: FontWeight.w700
      )),
      onPressed: () => {},
      backgroundColor: Colors.teal[600],
    ),
  )
));

