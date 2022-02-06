import 'package:flutter/material.dart';

void main() => runApp(MTest());

class MTest extends StatelessWidget {
  const MTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text(
              'Simple App',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          backgroundColor: Colors.blueGrey[900]),
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/background.jpg'),
                      fit: BoxFit.cover))),
          Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text('Hello, Welcome!',
                        style: TextStyle(
                            color: Colors.grey[350],
                            fontFamily: 'Dacing',
                            fontWeight: FontWeight.w700,
                            fontSize: 32.0,
                            decoration: TextDecoration.underline)),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.amber,
                    size: 35,
                  )
                ]
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click',
            style: TextStyle(
                color: Colors.amber,
                fontFamily: 'Dacing',
                fontWeight: FontWeight.w700)),
        onPressed: () => {},
        backgroundColor: Colors.blueGrey[900],
      ),
    ));
  }
}
