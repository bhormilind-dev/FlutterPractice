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
      child: Text('Hello, Welcome!'),
    ),
    floatingActionButton: FloatingActionButton(
      child: const Text('Click'),
      onPressed: () => {},
      backgroundColor: Colors.teal[600],
    ),
  )
));

