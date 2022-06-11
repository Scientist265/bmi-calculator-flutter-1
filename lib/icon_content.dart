import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
    fontSize: 30,
    fontFamily: 'NotoSans',
    fontWeight: FontWeight.bold,
    color: Color(0xFFF2F4F9));

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  IconContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100.0,
          color: Color(0XFFFEFEFE),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(label, style: labelTextStyle)
      ],
    );
  }
}
