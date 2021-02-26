import 'package:flutter/material.dart';
import 'package:flutter_codigo_bmi/bottom_button.dart';
import 'package:flutter_codigo_bmi/constants.dart';
import 'package:flutter_codigo_bmi/reusable_card.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ResultPage"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              "Your result",
              style: kResultTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Normal",
                    style: kResultTextStyle,
                  ),
                  Text(
                    "25",
                    style: kResultNumberTextStyle,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                    style: kBMITextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            text: "RE-CALCULATE",
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
