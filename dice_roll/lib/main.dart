import 'package:flutter/material.dart';
import 'package:dice_roll/gradient_container.dart';

// runApp(); -> main function
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Color(0xFF673AB7),
        body: const GradientContainer(),
      ),
    ),
  );
}
