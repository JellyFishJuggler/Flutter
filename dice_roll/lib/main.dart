import 'package:flutter/material.dart';

// runApp(); -> main function
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Color(0xFF673AB7),
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 47, 4, 122),
            const Color.fromARGB(255, 80, 2, 175)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Text(
          'Hello World!',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
