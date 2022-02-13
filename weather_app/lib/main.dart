import 'package:flutter/material.dart';
import 'package:weather_app/_pages/home.dart';
import 'package:weather_app/_pages/loading.dart';
import 'package:weather_app/_pages/choose_location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => Home(),
      '/location': (context) => const ChooseLocation()

    },
  ));
}

