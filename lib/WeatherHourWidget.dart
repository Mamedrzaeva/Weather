import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'WeatherHourInfo.dart';

class WeatherHourWidget extends StatelessWidget {
  final WeatherHourInfo hour;

  WeatherHourWidget({required this.hour});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
        margin: EdgeInsets.symmetric(horizontal: 23),
        child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(hour.date,style: TextStyle(fontSize: 13),),
              SizedBox(height: 8,),
              Icon(hour.icon, color: Colors.white,size: 28,),
              SizedBox(height: 8,),
              Text('${hour.temperature}°', style: TextStyle(fontSize: 22),),
            ],
          ),
        );
  }
}
