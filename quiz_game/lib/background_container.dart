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
