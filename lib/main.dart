import 'package:flutter/material.dart';
import 'package:weatherapp/Cities.dart';
import 'package:weatherapp/GradientBox.dart';
import 'package:weatherapp/ImageWidget.dart';
import 'package:weatherapp/WeatherHourInfo.dart';
import 'package:weatherapp/WeatherInfo.dart';
import 'package:weatherapp/tenforecatWidget.dart';
import 'WeatherHourWidget.dart';
import 'WeatherWidget.dart';


void main() => runApp(Weather());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Weather (),
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
    WeatherInfo(date: "28 Jule", icon: Icons.wb_sunny, temperatureMax: 25, temperatureMin: 18, description: 'Clear Sky',),
    WeatherInfo(date: "29 Jule", icon: Icons.cloud, temperatureMax: 22, temperatureMin: 15, description: 'Cloudy',),
    WeatherInfo(date: "30 Jule", icon: Icons.beach_access, temperatureMax: 30, temperatureMin: 22, description: 'Beach Day',),
    WeatherInfo(date: "31 Jule", icon: Icons.ac_unit, temperatureMax: 10, temperatureMin: 5, description: 'Snowy Day',),
    WeatherInfo(date: "1 August", icon: Icons.umbrella, temperatureMax: 32, temperatureMin: 26, description: 'Rainy Day',),
    WeatherInfo(date: "2 August", icon: Icons.filter_drama, temperatureMax: 20, temperatureMin: 15, description: 'Dramatic',),
    WeatherInfo(date: "3 August", icon: Icons.snowshoeing, temperatureMax: 0, temperatureMin: -5, description: 'Snowshoeing',),
    WeatherInfo(date: "4 August",icon: Icons.nightlight_round, temperatureMax: 18, temperatureMin: 12, description: 'Night Light',),
    WeatherInfo(date: "5 August", icon: Icons.brightness_2, temperatureMax: 28, temperatureMin: 22, description: 'Sunny Night',),
    WeatherInfo(date: "6 August", icon: Icons.directions_bike, temperatureMax: 26, temperatureMin: 20, description: 'Biking Day',),
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
              child: WidgetPreview (image: AssetImage ('assets/images/2.jpg')),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Cities (),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    GradientBox(icon: Icons.sunny,text2: 'Sunny', text3: '5 - 8 km/h',),
                    SizedBox(width: 10),
                    GradientBox(icon: Icons.temple_hindu,text2: 'Pressure', text3: '1000 MB',),
                    SizedBox(width: 10),
                    GradientBox(icon: Icons.water_drop_outlined,text2: 'Humidity', text3: '51%',),
                  ],
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
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
              child: tenForecastWidget(),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Container(
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
