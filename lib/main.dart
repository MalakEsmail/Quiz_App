import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  int totalScore = 0;
  void answerQuestion(int score) {
    totalScore = totalScore + score;
    setState(() {
      index = index + 1;
    });
  }

  void reset() {
    setState(() {
      index=0;
      totalScore=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'Question': 'what\'s your favourite colour?',
        'Answer': [
          {'text': 'Red', 'score': 10},
          {'text': 'Blue', 'score': 5},
          {'text': 'Yellow', 'score': 3},
          {'text': 'Green', 'score': 1}
        ],
      },
      {
        'Question': 'what\'s your favourite animal ?',
        'Answer': [
          {'text': 'Lion', 'score': 10},
          {'text': 'Cat', 'score': 5},
          {'text': 'Dog', 'score': 3},
          {'text': 'Elephant', 'score': 1}
        ],
      }
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Quiz App'),
        ),
        body: index < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questions: questions,
                index: index,
              )
            : Result(totalScore,reset),
      ),
    );
  }
}
