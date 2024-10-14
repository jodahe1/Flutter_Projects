import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightandAgeControl extends StatelessWidget {
  final double Num;
  final ValueChanged<int> onWeightChanged;
  final String label;
  const WeightandAgeControl(
      {Key? key,
      required this.Num,
      required this.onWeightChanged,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(
        vertical: 8,
      ),
      color: const Color.fromARGB(255, 25, 33, 75),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 30),
          ),
          Text(
            Num.toStringAsFixed(0),
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
                  if (Num > 0) {
                    onWeightChanged(Num.toInt() - 1);
                  }
                },
                child: const Icon(
                  FontAwesomeIcons.minus,
                  size: 20,
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
                  onWeightChanged(Num.toInt() + 1);
                },
                child: const Icon(
                  FontAwesomeIcons.plus,
                  size: 20.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
