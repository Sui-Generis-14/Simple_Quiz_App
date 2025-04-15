import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      { @required this.questions,
       @required this.answerQuestion,
       @required this.questionIndex});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['Questions'] as String),
        //Question
        ...(questions[questionIndex]['Options'] as List<Map<String, Object>>)
            .map((Answers) {
          return Answer(() => answerQuestion(Answers['score']),
              (Answers['text'] as String));
        }).toList()
        //Options
      ],
    );
  }
}
