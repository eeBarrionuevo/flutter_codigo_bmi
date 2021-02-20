import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color color;
  final Widget childCard;
  final Function lomito;

  ReusableCard({@required this.color, @required this.childCard, this.lomito});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: lomito,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: childCard,
      ),
    );
  }
}