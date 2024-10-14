import 'package:bmi/Gendercard.dart';
import 'package:bmi/ResultPage.dart';
import 'package:bmi/WeightAndAge.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  double _currentHeight = 180;
  int _weight = 60;
  int Age = 22;
  Color _mPassColor = const Color(0xFF0A0E21);
  Color _mActiveColor = const Color.fromARGB(255, 81, 88, 123);
  Color _fPassColor = const Color(0xFF0A0E21);
  Color _fActiveColor = const Color.fromARGB(255, 81, 88, 123);

  @override
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 90.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 2,
                  child: GenderCard(
                    gender: 'Male',
                    icons: FontAwesomeIcons.mars,
                    colors: _mPassColor,
                    onTap: () {
                      setState(() {
                        _mPassColor = _mActiveColor;
                        _fPassColor = const Color(0xFF0A0E21);
                      });
                    },
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 2,
                  child: GenderCard(
                    gender: 'Female',
                    icons: FontAwesomeIcons.venus,
                    colors: _fPassColor,
                    onTap: () {
                      setState(() {
                        _fPassColor = _fActiveColor;
                        _mPassColor = const Color(0xFF0A0E21);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Height', style: TextStyle(fontSize: 39)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        _currentHeight.toInt().toString(),
                        style: const TextStyle(fontSize: 39),
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Slider(
                    value: _currentHeight,
                    min: 110,
                    max: 240,
                    divisions: 130,
                    label: _currentHeight.toInt().toString(),
                    onChanged: (double newValue) {
                      setState(() {
                        _currentHeight = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          // Refactored Weight And Age  Section
          Row(
            children: [
              Expanded(
                flex: 2,
                child: WeightandAgeControl(
                  Num: _weight,
                  onWeightChanged: (newWeight) {
                    setState(() {
                      _weight = newWeight;
                    });
                  },
                  label: 'Weight',
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                flex: 2,
                child: WeightandAgeControl(
                  Num: Age,
                  onWeightChanged: (newAge) {
                    setState(() {
                      Age = newAge;
                    });
                  },
                  label: 'Age',
                ),
              )
            ],
          ),
          //Calculate Button
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 13, 141, 137),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Rectangular shape
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ResultPage();
                      }));
                    });
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 33,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
