import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text('Choose a location'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
         children: const [
           Text('Sample')
         ],
        ),
      ),
    );
  }
}
