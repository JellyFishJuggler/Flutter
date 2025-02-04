import 'package:dice_roll/dice_roll_update.dart';
import 'package:flutter/material.dart';

var startAlign = Alignment.topLeft;
var endAlign = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  //initialization work

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlign,
          end: endAlign,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
