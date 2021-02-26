import 'package:flutter/material.dart';
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
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
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
                    style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "25",
                    style:
                        TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Mensaje de aliento",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
