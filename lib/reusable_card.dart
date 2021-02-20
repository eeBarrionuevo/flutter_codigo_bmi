import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color color;
  final Widget childCard;

  ReusableCard({@required this.color, @required this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: childCard,
    );
  }
}