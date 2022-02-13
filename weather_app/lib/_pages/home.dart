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
            onPressed: () {
              debugPrint('Received click');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () => {
                  print('Select the location')
                }, icon: const Icon(Icons.location_on_sharp), tooltip: 'Choose Location', color: Colors.green, ),
                const Text('Choose the Location')
              ],
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
