import 'package:bmi/Gendercard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class inputclState extends StatefulWidget {
  const inputclState({super.key});

  @override
  State<inputclState> createState() => __inputclStateState();
}

class __inputclStateState extends State<inputclState> {
  @override
  double _currentHeight = 180;
  Widget build(BuildContext context) {
    return Scaffold(
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 80.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GenderCard(
                  gender: 'Male',
                  icons: FontAwesomeIcons.mars,
                ),
                GenderCard(
                  gender: 'Female',
                  icons: FontAwesomeIcons.venus,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100.0),
            child: Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    ],
                  ),
                  Slider(
                    value: _currentHeight,
                    min: 110,
                    max: 240,
                    divisions:
                        130, // Optional: to have discrete values (110-240)
                    label: _currentHeight.toInt().toString(),
                    onChanged: (double newValue) {
                      setState(
                        () {
                          _currentHeight = newValue;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

