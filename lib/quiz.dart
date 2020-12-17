import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';

class Quiz extends StatelessWidget {
  Function answerQuestion;
  List<Map<String,Object>> questions;
  int index;
  Quiz({@required this.answerQuestion,@required this.questions,@required this.index});
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            Question(questions[index]['Question']),
            ...(questions[index]['Answer'] as List<Map<String,Object>>).map((answer) {
              return Answer(()=> answerQuestion(answer['score']),answer['text']);
            }).toList()
          ],
        );
  }
}