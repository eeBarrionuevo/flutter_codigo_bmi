import 'package:flutter/material.dart';
import 'package:flutter_codigo_bmi/constants.dart';

class BottomButton extends StatelessWidget {

  final String text;
  final Function onTap;

  BottomButton({this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
