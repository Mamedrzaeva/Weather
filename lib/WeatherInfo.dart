
import 'package:flutter/cupertino.dart';

class WeatherInfo {
  String date;
  IconData icon;
  int temperatureMax;
  int temperatureMin;
  String description;

  WeatherInfo({
    required this.date,
    required this.icon,
    required this.temperatureMax,
    required this.temperatureMin,
    required this.description,
  });
}
