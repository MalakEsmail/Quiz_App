import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Function fun;
  String text;
  Answer(this.fun,this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:RaisedButton(onPressed: fun,child: Text(text,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
    );
  }
}