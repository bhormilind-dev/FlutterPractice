import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SpinKitWave(
              color: Colors.white,
              size: 50.0,
            ),
            SizedBox(height: 20),
            Text('Loading . . .',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white
            ))
          ],
        ),
      ),
    );
  }
}
