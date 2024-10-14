import 'package:bmi/Gendercard.dart';
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
  int _weight = 20;
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 70.0),
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
          // Refactored Weight And Age  Section
          Row(
            children: [
              Expanded(
                flex: 2,
                child: WeightandAgeControl(
                  weight: _weight,
                  onWeightChanged: (newWeight) {
                    setState(() {
                      _weight = newWeight;
                    });
                  },
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Expanded(
                flex: 2,
                child: WeightandAgeControl(
                  weight: _weight,
                  onWeightChanged: (newWeight) {
                    setState(() {
                      _weight = newWeight;
                    });
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
