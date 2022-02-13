import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/_services/world_time.dart';



class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String timer = 'Loading . . .';

  void setupWorldTime() async {
    WorldTime obj = WorldTime(url: 'Europe/Berlin', location: 'Berlin', flagImg: 'germany.png');
    await obj.getTime();
    Navigator.pushReplacementNamed(context, '/home' , arguments: obj);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const SpinKitWave(
              color: Colors.black,
              size: 50.0,
            ),
            const SizedBox(height: 20),
            Text(timer,
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.black
            ))
          ],
        ),
      ),
    );
  }
}
