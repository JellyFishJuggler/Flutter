import 'package:flutter/material.dart';
import 'package:quiz_game/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The question goes here',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          AnswerButton(answerText: 'Answer 1', onTap: () {}),
          AnswerButton(answerText: 'Answer 2', onTap: () {}),
          AnswerButton(answerText: 'Answer 3', onTap: () {}),
          AnswerButton(answerText: 'Answer 4', onTap: () {}),
        ],
      ),
    );
  }
}
