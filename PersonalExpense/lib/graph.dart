import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  const Graph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      child: const Card(
        elevation: 5,
        color: Color.fromRGBO(208, 208, 208, 1.0),
        child: Text('Sample Graph Card'),
      ),
    ) ;
  }
}
