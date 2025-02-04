import 'package:flutter/material.dart';
import 'package:dice_roll/gradient_container.dart';

// runApp(); -> main function
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Color(0xFF673AB7),
        body: const GradientContainer(
            [Color.fromARGB(255, 47, 4, 122), Color.fromARGB(255, 80, 2, 175)]),
      ),
    ),
  );
}
