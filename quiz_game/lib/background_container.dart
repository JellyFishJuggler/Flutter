import 'package:flutter/material.dart';
import 'package:quiz_game/image_container.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer(
      {required this.color1, required this.color2, super.key});

  final beginAlign = Alignment.topCenter;
  final endAlign = Alignment.bottomCenter;

  final Color color1, color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Ensures it takes full screen width
      height: double.infinity, // Ensures it takes full screen height
      padding: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: beginAlign,
          end: endAlign,
        ),
      ),
      child: const ImageContainer(),
    );
  }
}
