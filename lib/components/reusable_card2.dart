import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class ReusableCard2 extends StatelessWidget {
  final String title;
  final int value;
  final Function onTapIncrement;
  final Function onTapDecrement;

  ReusableCard2(
      {@required this.title,
      this.value,
      this.onTapIncrement,
      this.onTapDecrement});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: kLabelTextStyle,
        ),
        Text(
          value.toString(),
          style: kBigTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPress: onTapDecrement,
            ),
            SizedBox(
              width: 20,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPress: onTapIncrement,
            ),
          ],
        )
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  RoundIconButton({@required this.icon, @required this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: kFabColor,
      child: Icon(icon),
    );
  }
}
