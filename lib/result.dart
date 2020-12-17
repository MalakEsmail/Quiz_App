import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int resultScore;
  Function reset;
  Result(this.resultScore,this.reset);
  String get getQuizResult {
    String value;
    if (resultScore <= 8) {
      value = 'sorry .. its bad !';
    } else {
      value = 'its good';
    }
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      Text(
        getQuizResult,
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
        textAlign: TextAlign.center,
      ),FlatButton(onPressed: reset, child: Text('Restart Quiz',style: TextStyle(color: Colors.blue),))
    ]
    );
  }
}
