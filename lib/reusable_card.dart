import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild; // instance variable

  ReusableCard(
      {@required this.colour,
      this.cardChild}); // Constructor to call the colour
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
