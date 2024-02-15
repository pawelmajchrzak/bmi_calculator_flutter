import 'package:flutter/material.dart';

const textColor = Color(0xFF8D8E98);
const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: textColor,
);

class IconContent extends StatelessWidget {

  final IconData icon;
  final String label;

  IconContent(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}