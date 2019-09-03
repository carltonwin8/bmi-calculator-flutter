import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../components/reusable_card.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  final int height;
  final int weight;
  final int age;
  final Gender gender;

  ResultsPage({this.gender, this.height, this.weight, this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calcuator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Text(
                'Your Result',
                style: kBigTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              color: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'OVERWEIGHT',
                    style: kWeight,
                  ),
                  Text(
                    '26.7',
                    style: kVeryBigTextStyle,
                  ),
                  Text(
                    'You have a higher than normal body weight. Try to workout more.',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              text: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
