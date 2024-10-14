
  
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({required this.gender, required this.icons});
  final String gender;
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
