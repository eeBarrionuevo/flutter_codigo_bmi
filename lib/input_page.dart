import 'package:flutter/material.dart';
import 'package:flutter_codigo_bmi/icon_content.dart';
import 'package:flutter_codigo_bmi/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


const activeCardColor = Color(0xff1B2440);
const inactiveCardColor = Color(0xFF1A1B2B);
const bottomContainerColor = Colors.greenAccent;
const bottomContainerHeight = 80.0;

enum Gender{
  male,
  female,
  other
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR GITHUB"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                    childCard: IconContent(
                      text: "MALE",
                      icon: FontAwesomeIcons.mars,
                    ),
                    lomito: (){
                      selectedGender = Gender.male;
                      setState(() {
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.female ? activeCardColor: inactiveCardColor,
                    childCard: IconContent(
                      text: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                    ),
                    lomito: (){
                      selectedGender = Gender.female;
                      setState(() {
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
          )
        ],
      ),
    );
  }
}





