import 'package:flutter/material.dart';
import 'package:quiz_game/background_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: const BackgroundContainer(
            color1: Colors.deepPurple, color2: Colors.deepPurpleAccent),
      ),
    ),
  );
}
