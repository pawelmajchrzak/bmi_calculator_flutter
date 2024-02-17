import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomColorOfWidgets = Color(0xFFEB1555);

enum Gender {
  male,
  female,
  empty,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;
  Gender selectedGender = Gender.empty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
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
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      selectedGender == Gender.male
                          ? activeCardColour
                          : inactiveCardColour,
                      IconContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      selectedGender == Gender.female
                          ? activeCardColour
                          : inactiveCardColour,
                      IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                      // () {
                      //   setState(() {
                      //     selectedGender = Gender.female;
                      //   });
                      // },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              activeCardColour,
              Container(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    activeCardColour,
                    Container(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    activeCardColour,
                    Container(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomColorOfWidgets,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
