import 'package:flutter/material.dart';
import 'package:flutter_codigo_bmi/input_page.dart';




void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff111426),
        scaffoldBackgroundColor: Color(0xff111426),
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.greenAccent,
          thumbColor: Colors.greenAccent,
          overlayColor: Colors.greenAccent.withOpacity(0.2),
          thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 15.0
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 30.0,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}







