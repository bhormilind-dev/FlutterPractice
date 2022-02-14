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
      backgroundColor: Colors.grey[900],
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            style: ButtonStyle(
                side: MaterialStateProperty.all(const BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                    style: BorderStyle.solid)
                )),
            onPressed: () => {
              Navigator.pushNamed(context, '/location')
            },
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.location_on_sharp, color: Colors.amber),
                  Text('Edit Location', style: TextStyle(
                    color: Colors.amber
                  ),)
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Text(obj.location, style: const TextStyle(
              fontSize: 26.0,
              color: Colors.white
          )),
          const SizedBox(height: 20.0),
          Text('${obj.time}', style: const TextStyle(
            fontSize: 66.0,
            color: Colors.white
          )),

        ],
      )),
    );
  }
}
