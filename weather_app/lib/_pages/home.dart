import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/location')
            },
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.location_on_sharp),
                  Text('Edit Location')
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          const Text('Timing', style: TextStyle(
              fontSize: 66.0
          ),)

        ],
      )),
    );
  }
}
