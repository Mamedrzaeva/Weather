import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxInfo {

}

class GradientBox extends StatefulWidget{

  IconData icon;
  String text2;
  String text3;

  GradientBox ({
    required this.icon,
    required this.text2,
    required this.text3,
  });

  @override
  _BoxState createState() => _BoxState(icon,text2,text3);

}

class _BoxState extends State <GradientBox>{
  IconData icon;
  String text2;
  String text3;


  _BoxState(this.icon, this.text2, this.text3);

  @override
  Widget build (BuildContext context) {
    return Expanded(
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
              icon,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text2,
              style:
              TextStyle(color: Colors.white, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text3,
              style:
              TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}