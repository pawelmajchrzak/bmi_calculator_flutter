import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
  empty,
}

Gender example() {
  return Gender.male;
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = kInactiveCardColour;
  Color femaleCardColour = kInactiveCardColour;
  Gender selectedGender = Gender.empty;

  int height = 180;

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
                  child: ReusableCard(
                    () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    IconContent(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              () {},
              kActiveCardColour,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    () {},
                    kActiveCardColour,
                    Container(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    () {},
                    kActiveCardColour,
                    Container(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomColorOfWidgets,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}
