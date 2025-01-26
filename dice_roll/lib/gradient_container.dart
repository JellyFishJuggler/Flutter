import 'package:flutter/material.dart';
import 'package:dice_roll/styled_text.dart';

var startAlign = Alignment.topLeft;
var endAlign = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  //initialization work

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 47, 4, 122),
            const Color.fromARGB(255, 80, 2, 175)
          ],
          begin: startAlign,
          end: endAlign,
        ),
      ),
      child: Center(
        child: StyledText(),
      ),
    );
  }
}
