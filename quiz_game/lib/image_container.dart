import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  final icon = 'assets/images/quiz-logo.png';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
          ElevatedButton(onPressed: () {}, child: Text('Vanshika')),
        ],
      ),
    );
  }
}
