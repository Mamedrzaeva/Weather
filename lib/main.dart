import 'package:flutter/material.dart';

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
  final List<String> texts = [
    'Текст 1',
    'Текст 2',
    'Текст 3',
    'Текст 4',
    'Текст 5',
    'Текст 6',
    'Текст 7',
    'Текст 8',
    'Текст 9',
    'Текст 10',
    'Текст 11',
    'Текст 12',
    'Текст 13',
    'Текст 14',
    'Текст 15',
  ];

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: [
            Directionality(
              textDirection: TextDirection.ltr,
              child: Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image(image: AssetImage('assets/images/1.jpeg')),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 200,
                    child: Center(
                      child: Text(
                        '-10',
                        style: TextStyle(color: Colors.black, fontSize: 40),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 125,
                    child: Center(
                      child: Text(
                        'Real feel -20',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Container(
                width: 500,
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.blue, Colors.pinkAccent],
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.sunny,
                              color: Colors.white,
                            ),
                            Text(
                              'Sunny',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '5-8km/h',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.blue, Colors.pinkAccent],
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.temple_hindu,
                              color: Colors.white,
                            ),
                            Text(
                              'Preesure',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '1000MB',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.bottomRight,
                            colors: [Colors.blue, Colors.pinkAccent],
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.water_drop_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              'Humidity',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '51%',
                              style: TextStyle(color: Colors.white),
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
                height: 70.0,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius:
                      BorderRadius.circular(10.0), // Закругленные края
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 50.0,
                      margin: EdgeInsets.all(1.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            texts[index],
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Container(
                height: 70.0,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius:
                  BorderRadius.circular(10.0), // Закругленные края
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 50.0,
                      margin: EdgeInsets.all(1.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            texts[index],
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Container(
                height: 70.0,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius:
                  BorderRadius.circular(10.0), // Закругленные края
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 50.0,
                      margin: EdgeInsets.all(1.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            texts[index],
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
