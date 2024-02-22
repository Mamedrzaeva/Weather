import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetPreview extends StatefulWidget {
  const WidgetPreview({Key? key, required AssetImage image}) : super(key: key);

  @override
  _ImageState createState() => _ImageState();
}

class _ImageState extends State<WidgetPreview> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(
              image: AssetImage('assets/images/2.jpg'),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 230,
          right: 0,
          bottom: 100,
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
          top: 0,
          left: 250,
          right: 0,
          bottom: 20,
          child: Center(
            child: Text(
              'Real feel -20',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 165,
          bottom: 430,
          child: Center(
            child: Text(
              '25 January, Friday',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ),
        Positioned(
          top: 500,
          left: 230,
          right: 0,
          bottom: 0,
          child: Center(
            child: Row (children: [
              Text(
                'Moscow',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              Icon(
                Icons.call_made,
                color: Colors.white,
                size: 25,
              ),
            ],),
          ),
        ),
      ],
    );
  }
}