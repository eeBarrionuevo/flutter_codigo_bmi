import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo_bmi/constants.dart';
import 'package:flutter_codigo_bmi/icon_content.dart';
import 'package:flutter_codigo_bmi/result_page.dart';
import 'package:flutter_codigo_bmi/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female, other }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 160;
  int age = 25;
  int weight = 53;

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
                    color: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    childCard: IconContent(
                      text: "MALE",
                      icon: FontAwesomeIcons.mars,
                    ),
                    onPress: () {
                      selectedGender = Gender.male;
                      setState(() {});
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    childCard: IconContent(
                      text: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                    ),
                    onPress: () {
                      selectedGender = Gender.female;
                      setState(() {});
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
                    color: kActiveCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              "cm",
                              style: kLabelTextStyle,
                            )
                          ],
                        ),
                        Slider(
                            value: height.toDouble(),
                            min: 100,
                            max: 200,
                            inactiveColor: Colors.white54,
                            onChanged: (double value) {
                              height = value.round();
                              setState(() {});
                            }),
                      ],
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
                    color: kActiveCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                age++;
                                setState(() {});
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                age--;
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                weight++;
                                setState(() {});
                              },
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                weight--;
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
            },
            child: Container(
              color: kBottomContainerColor,
              height: kBottomContainerHeight,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              child: Center(
                child: Text(
                  "CALCULATE",
                  style: kLargeButtonTextStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  IconData icon;
  Function onPress;

  RoundIconButton({@required this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(icon),
      fillColor: Colors.white38,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(height: 50.0, width: 50.0),
    );
  }
}
