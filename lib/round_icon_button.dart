import 'package:flutter/material.dart';

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
