import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestions = questions[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              currentQuestions.text,

              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(answerText: currentQuestions.answers[0], onTap: () {}),
          AnswerButton(answerText: currentQuestions.answers[1], onTap: () {}),
          AnswerButton(answerText: currentQuestions.answers[2], onTap: () {}),
          AnswerButton(answerText: currentQuestions.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
