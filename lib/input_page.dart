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


  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  //
  // void updateCardColor(Gender gender){
  //   if(gender == Gender.male){
  //     if(maleCardColor == inactiveCardColor){
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  //   if(gender == Gender.female){
  //     if(femaleCardColor == inactiveCardColor){
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  //   setState(() {
  //
  //   });
  //
  // }



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
                  child: GestureDetector(
                    onTap: (){
                      print("Male");
                      selectedGender = Gender.male;
                      setState(() {

                      });
                      //updateCardColor(Gender.male);
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                      childCard: IconContent(
                        text: "MALE",
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      print("Female");
                      selectedGender = Gender.female;
                      setState(() {

                      });
                      //updateCardColor(Gender.female);
                    },
                    child: ReusableCard(
                      color: selectedGender == Gender.female ? activeCardColor: inactiveCardColor,
                      childCard: IconContent(
                        text: "FEMALE",
                        icon: FontAwesomeIcons.venus,
                      )
                    ),
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





