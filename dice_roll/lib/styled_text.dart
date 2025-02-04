import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(String text, {super.key}) : showText = text;

  final String showText;

  @override
  Widget build(context) {
    return Text(
      showText,
      style: TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
