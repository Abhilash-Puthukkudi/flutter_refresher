import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final VoidCallback answerQuestion;
  final int questionIndex;
  final List questions;
  const Quiz(
      {required this.questionIndex,
      required this.answerQuestion,
      required this.questions,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Question(
          question: questions[questionIndex]['QuestionText'].toString(),
        ),
        ...(questions[questionIndex]['Answers'] as List).map((answer) {
          return Answer(
            onpressed: answerQuestion,
            buttonText: answer,
          );
        }).toList(),
      ],
    );
  }
}
