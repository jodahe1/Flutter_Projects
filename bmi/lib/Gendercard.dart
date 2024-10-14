import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard(
      {required this.gender, required this.icons, required this.colors});
  final String gender;
  final IconData icons;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colors,
      child: Column(
        children: [
          Icon(
            icons,
            size: 65.0,
          ),
          Text(
            gender,
            style: const TextStyle(fontSize: 39),
          )
        ],
      ),
    );
  }
}
