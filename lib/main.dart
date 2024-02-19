import 'package:flutter/material.dart';
import 'package:weatherapp/WeatherHourInfo.dart';
import 'package:weatherapp/WeatherInfo.dart';
import 'WeatherHourWidget.dart';
import 'WeatherWidget.dart';

void main() => runApp(Weather());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather'),
        ),
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            children: [
              Text(
                'Привет!',
                style: TextStyle(color: Colors.pinkAccent),
              ),
              Weather(),
            ],
          ),
        ),
      ),
    );
  }
}

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  final List<WeatherHourInfo> onHours = [
    WeatherHourInfo(date: 'NOW', icon: Icons.cloud, temperature: -10),
    WeatherHourInfo(date: '3 AM', icon: Icons.cloud, temperature: -10),
    WeatherHourInfo(date: '4 AM', icon: Icons.cloud, temperature: -10),
    WeatherHourInfo(date: '5 AM', icon: Icons.cloud, temperature: -10),
    WeatherHourInfo(date: '6 AM', icon: Icons.cloud, temperature: -10),
    WeatherHourInfo(date: '7 AM', icon: Icons.cloud, temperature: -10),
    WeatherHourInfo(date: '8 AM', icon: Icons.cloud, temperature: -10),
    WeatherHourInfo(date: '9 AM', icon: Icons.cloud, temperature: -10),
  ];

  final List<WeatherInfo> onDays = [
    WeatherInfo(
      date: "28 Jule",
      icon: Icons.wb_sunny,
      temperatureMax: 25,
      temperatureMin: 18,
      description: 'Clear Sky',
    ),
    WeatherInfo(
      date: "29 Jule",
      icon: Icons.cloud,
      temperatureMax: 22,
      temperatureMin: 15,
      description: 'Cloudy',
    ),
    WeatherInfo(
      date: "30 Jule",
      icon: Icons.beach_access,
      temperatureMax: 30,
      temperatureMin: 22,
      description: 'Beach Day',
    ),
    WeatherInfo(
      date: "31 Jule",
      icon: Icons.ac_unit,
      temperatureMax: 10,
      temperatureMin: 5,
      description: 'Snowy Day',
    ),
    WeatherInfo(
      date: "1 August",
      icon: Icons.umbrella,
      temperatureMax: 32,
      temperatureMin: 26,
      description: 'Rainy Day',
    ),
    WeatherInfo(
      date: "2 August",
      icon: Icons.filter_drama,
      temperatureMax: 20,
      temperatureMin: 15,
      description: 'Dramatic',
    ),
    WeatherInfo(
      date: "3 August",
      icon: Icons.snowshoeing,
      temperatureMax: 0,
      temperatureMin: -5,
      description: 'Snowshoeing',
    ),
    WeatherInfo(
      date: "4 August",
      icon: Icons.nightlight_round,
      temperatureMax: 18,
      temperatureMin: 12,
      description: 'Night Light',
    ),
    WeatherInfo(
      date: "5 August",
      icon: Icons.brightness_2,
      temperatureMax: 28,
      temperatureMin: 22,
      description: 'Sunny Night',
    ),
    WeatherInfo(
      date: "6 August",
      icon: Icons.directions_bike,
      temperatureMax: 26,
      temperatureMin: 20,
      description: 'Biking Day',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: [
            Directionality(
              textDirection: TextDirection.ltr,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image(
                        image: AssetImage('assets/images/moun.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 230,
                    right: 0,
                    bottom: 0,
                    child: Center(
                      child: Text(
                        '-10℃',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 230,
                    right: 0,
                    bottom: 0,
                    child: Center(
                      child: Text(
                        'Real feel -20',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 180,
                    bottom: 150,
                    child: Center(
                      child: Text(
                        '25 January, Friday',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 350,
                    left: 0,
                    right: 280,
                    bottom: 0,
                    child: Center(
                      child: Text(
                        'Moscow',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 355,
                    left: 0,
                    right: 150,
                    bottom: 0,
                    child: Center(
                      child: Icon(Icons.call_made, color: Colors.white,size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Container(
                margin: EdgeInsets.only(left: 8, top: 10, right: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.0),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.blue.shade300,
                              Colors.purple.shade200
                            ],
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.sunny,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Sunny',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '5 - 8 km/h',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.0),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.purple.shade200,
                              Colors.blue.shade300
                            ],
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.temple_hindu,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Preesure',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '1000 MB',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.0),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.purple.shade200,
                              Colors.blue.shade300
                            ],
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.water_drop_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Humidity',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '51%',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                height: 110.0,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: onHours.length,
                  itemBuilder: (BuildContext context, int index) {
                    return WeatherHourWidget(hour: onHours[index]);
                  },
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Container(
                height: 60,
                width: 700,
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.only(left: 10, top: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '10 days forecast',
                      style: TextStyle(fontSize: 23),
                    ),
                  ],
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: onDays
                      .map(
                        (weather) => Column(
                          children: <Widget>[
                            WeatherWidget(weather: weather),
                            Container(
                              width: 370,
                              height: 1,
                              color: Colors.grey[800],
                            ),
                          ],
                        ),
                      )
                      .expand((element) => [element, SizedBox(height: 3)])
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
