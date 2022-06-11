import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';

const bottomContainerColor = Color(0xFFFF0067);
const activeCardColor = Color(0xFF1D1F33);
const inActiveCardColor = Color(0xFF272A4E);
const bottomContainerHeight =
    80.0; // In order to access the variable easily and to ave the stress in searching through the whole code

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;
  //1 = male, 2= female
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      } else {
        maleCardColor = inActiveCardColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColor == inActiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inActiveCardColor;
      } else {
        femaleCardColor = inActiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                        colour: inActiveCardColor),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                        colour: inActiveCardColor),
                  ),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                )
              ],
            )),
            Container(
              child: Center(
                  child: Text(
                'Calculate your BMI',
                style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )),
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
