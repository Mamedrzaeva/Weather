import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/WeatherInfo.dart';

class WeatherWidget extends StatelessWidget {
  final WeatherInfo weather;

  WeatherWidget({required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child:
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(weather.date,style: TextStyle(fontSize: 15),),
              SizedBox(width: 20,),
              Icon(weather.icon, color: Colors.white,size: 35,),
              SizedBox(width: 20,),
              Text('${weather.temperatureMax}°', style: TextStyle(fontSize: 23),),
              SizedBox(width: 20,),
              Text('—', style: TextStyle(fontSize: 25, color: Colors.grey),),
              SizedBox(width: 20,),
              Text('${weather.temperatureMin}℃', style: TextStyle(fontSize: 15, color: Colors.grey),),
              SizedBox(width: 20,),
              Text(weather.description, style: TextStyle(fontSize: 15, color: Colors.grey),),
            ],
          ),
        );
  }
}
