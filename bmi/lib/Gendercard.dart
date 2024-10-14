import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard(
      {required this.gender, required this.icons, required this.colors,this.onTap});
  final String gender;
  final IconData icons;
  final Color colors;
  final Function()? onTap; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
