

import 'dart:math';

class CalculatorBrain{

  final int height;
  final int weight;

  double bmi;

  CalculatorBrain({this.height, this.weight});


  String calculateBMI(){
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(bmi >= 25){
      return "Overweight";
    }else if(bmi > 18.5){
      return "Normal";
    }else{
      return "Underweight";
    }
  }

  String getInterpretation(){
    if(bmi >= 25.0){
      return "Try to exercise more.";
    }else if(bmi > 18.5){
      return "You have a normal body, good job!";
    }else{
      return "You can eat a bit more";
    }
  }


}
