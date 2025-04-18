import 'package:flutter/material.dart';
import 'package:demo_app/styled_text.dart';
import 'package:demo_app/dice_roll.dart';

const start = Alignment.topRight;
const end = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1, color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: start,
          end: end,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
