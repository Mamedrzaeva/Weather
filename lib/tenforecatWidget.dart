
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tenForecastWidget extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return Container(
      height: 60,
      width: 700,
      padding: EdgeInsets.only(top: 10),
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
    );
  }
}