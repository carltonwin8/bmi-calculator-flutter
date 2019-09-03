import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({
    @required this.onTap,
    @required this.text,
  });

  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kFooterColor,
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: kBottomContainerHeight,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: kCalculate,
            ),
          ],
        ),
      ),
    );
  }
}
