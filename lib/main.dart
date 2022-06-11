import 'package:flutter/material.dart';
import 'input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey),
        textTheme:
            const TextTheme(bodyText2: TextStyle(color: Color(0xffffffff))),
      ),
      home: InputPage(),
    );
  }
}
