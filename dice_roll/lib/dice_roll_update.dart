import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceNum = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.yellow.shade200,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(4, 4),
              ),
            ],
          ),
          padding: EdgeInsets.all(16),
          child: Image.asset(
            'assets/dice-images/dice-$currentDiceNum.png',
            width: 200,
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              currentDiceNum = Random().nextInt(6) + 1;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 5,
          ),
          child: Text('Roll Dice 🎲'),
        ),
      ],
    );
  }
}
