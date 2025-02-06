import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  final String icon = 'assets/images/quiz-logo.png';

  @override
  Widget build(BuildContext context) {
    return Center(
      //padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            icon,
            width: 300,
            fit: BoxFit.contain,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
              onPressed: () {
                //change page
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.white),
                padding: WidgetStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
              ),
              icon: const Icon(Icons.play_arrow, color: Colors.deepPurple),
              label: const Text('Start Quiz')),
        ],
      ),
    );
  }
}
