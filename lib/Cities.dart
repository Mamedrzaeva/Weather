import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cities extends StatefulWidget {
  @override
  _CitiesState createState() => _CitiesState();
}

class _CitiesState extends State<Cities> {
  String selectedCity = 'Выберите город';
  List<String> cities = ['Москва', 'Санкт-Петербург', 'Новосибирск', 'Казань', 'Екатеринбург', 'Ростов-на-Дону'];

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Выбранный город:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              selectedCity,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showCityPicker(context);
              },
              child: Text('Выбрать город'),
            ),
          ],
        );
  }

  void _showCityPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Выберите город'),
          content: DropdownButton<String>(
            value: selectedCity,
            items: cities.map((String city) {
              return DropdownMenuItem<String>(
                value: city,
                child: Text(city),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                selectedCity = value!;
              });
              Navigator.of(context).pop();
            },
          ),
        );
      },
    );
  }
}