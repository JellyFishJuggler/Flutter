import 'package:flutter/material.dart';
import 'package:quiz_game/answer_button.dart';
import 'package:quiz_game/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {

  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex = currentQuestionIndex + 1;
    });
  }


  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestion.text,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            ...currentQuestion.getsuffledAnswers().map((item) {
              //to get individual answer here
              return AnswerButton(answerText: item, onTap: answerQuestion);
            })
          ],
        ),
      ),
    );
  }
}
