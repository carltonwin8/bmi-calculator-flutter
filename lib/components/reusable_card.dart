import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onTapFn;

  ReusableCard({@required this.color, this.cardChild, this.onTapFn});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFn,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: cardChild,
      ),
    );
  }
}
