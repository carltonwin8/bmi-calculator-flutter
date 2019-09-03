import 'package:flutter/material.dart';

enum Gender {
  male,
  female,
}

const kBottomContainerHeight = 80.0;
const kCardColor = Color(0xff1d1e33);
const kCardColorInactive = Color(0xff111328);
const kFooterColor = Color(0xFFEb1555);
const kThumbOverlayColor = Color(0x1FEb1555);
const kLabelColor = Color(0xff8d8e98);
const kFabColor = Color(0xff4c4f5e);

const kLabelTextStyle = TextStyle(
  fontSize: 18,
  color: kLabelColor,
);

const kBigTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

const kCalculate = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w900,
);

const kWeight = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w900,
  color: kFooterColor,
);

const kVeryBigTextStyle = TextStyle(
  fontSize: 100,
  fontWeight: FontWeight.w600,
);

kSliderTheme(context) => SliderTheme.of(context).copyWith(
    activeTrackColor: Colors.white,
    inactiveTrackColor: kLabelColor,
    thumbColor: kFooterColor,
    overlayColor: kThumbOverlayColor,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
    overlayShape: RoundSliderOverlayShape(overlayRadius: 30));
