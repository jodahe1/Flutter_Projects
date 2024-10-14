// Extracted WeightControl widget
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightandAgeControl extends StatelessWidget {
  final int weight;
  final ValueChanged<int> onWeightChanged;

  const WeightandAgeControl({
    Key? key,
    required this.weight,
    required this.onWeightChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      color: const Color.fromARGB(255, 25, 33, 75),
      child: Column(
        children: [
          const Text(
            'Weight',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            weight.toString(),
            style: const TextStyle(fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  backgroundColor: const Color(0xFF4C4F5E),
                  elevation: 6,
                  shadowColor: Colors.black.withOpacity(0.5),
                ),
                onPressed: () {
                  if (weight > 0) {
                    onWeightChanged(weight - 1);
                  }
                },
                child: const Icon(
                  FontAwesomeIcons.minus,
                  size: 25,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  backgroundColor: const Color(0xFF4C4F5E),
                  elevation: 6,
                  shadowColor: Colors.black.withOpacity(0.5),
                ),
                onPressed: () {
                  onWeightChanged(weight + 1);
                },
                child: const Icon(
                  FontAwesomeIcons.plus,
                  size: 25.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
