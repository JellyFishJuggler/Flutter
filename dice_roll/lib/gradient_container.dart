import 'package:flutter/material.dart';
import 'package:dice_roll/styled_text.dart';

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
      child: Center(
        child: Image.asset(
          'assets/dice-images/dice-1.png',
          width: 200,
        ),
      ),
    );
  }
}
