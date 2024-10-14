import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double _currentHeight = 180;
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'BMI Calculator',
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 55.0,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(fontSize: 29),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 55.0,
                      ),
                      Text(
                        'Female',
                        style: TextStyle(fontSize: 29),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    'Height',
                    style: TextStyle(fontSize: 29),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        _currentHeight.toString(),
                        style: TextStyle(fontSize: 39),
                      ),
                      const Text(
                        'cm ',
                        style: TextStyle(fontSize: 20),
                      ),
                      //                Slider(
                      //   value: _currentHeight,
                      //   min: 110,
                      //   max: 240,
                      //   divisions: 130, // Optional: to have discrete values (110-240)
                      //   label: _currentHeight.toInt().toString(),
                      //   // onChanged: (double newValue) {
                      //   //   setState(() {
                      //   //     _currentHeight = newValue;
                      //   //   });
                      //   // },
                      // ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
