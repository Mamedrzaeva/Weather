import 'package:flutter/material.dart';

void main() => runApp(Weather());


class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text ('10 June, Monday'),
        ),
        body:ScrollView (
          child: Stack (
            children: <Widget>[
              Image(image: AssetImage('assets/images/1.jpeg')),
            ],
          ),
        ),
      ),
      );
  }
}
