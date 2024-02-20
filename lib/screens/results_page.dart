import 'package:bmi_calculotor/constants.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  double bmi = 26.7;
  String comment =
      'You have a higher than normal body weight. Try to exercise more.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              () {},
              kActiveCardColour,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'OVERWEIGHT',
                    style: kResultTextSyle,
                  ),
                  Text(
                    bmi.toString(),
                    style: kBMITextSyle,
                  ),
                  Text(
                    comment,
                    style: kCommentTextSyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            () {
              Navigator.pop(context);
            },
            'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
