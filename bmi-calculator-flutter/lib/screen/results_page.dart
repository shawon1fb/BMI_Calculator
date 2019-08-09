import 'package:flutter/material.dart';
import 'package:bmi_calculator/constans.dart';
import 'package:bmi_calculator/component/ReUseAble_Card.dart';
import 'package:bmi_calculator/component/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.interpatation, this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpatation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: new ReUsableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpatation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          new BottomButton(
            text: 'Re-Calculate'.toUpperCase(),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
