import 'package:flutter/material.dart';
import 'package:weather_app/_services/world_time.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late WorldTime obj;

  @override
  Widget build(BuildContext context) {

    obj = ModalRoute.of(context)?.settings?.arguments! as WorldTime;

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
          Text('${obj.location}', style: TextStyle(
              fontSize: 26.0
          )),
          const SizedBox(height: 20.0),
          Text('${obj.time}', style: TextStyle(
            fontSize: 66.0
          )),

        ],
      )),
    );
  }
}
