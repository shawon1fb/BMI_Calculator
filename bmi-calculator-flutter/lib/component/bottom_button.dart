import 'package:flutter/material.dart';
import 'package:bmi_calculator/constans.dart';


class BottomButton extends StatelessWidget {
  BottomButton({@required this.text, this.onTap});

  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContanerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 10.0),
        height: kBottomContanerHight,
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: kLargeButtonStyle,
          ),
        ),
      ),
    );
  }
}
