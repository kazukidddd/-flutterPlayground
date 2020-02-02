import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
final Function selectHandler;
final List answerText;
final int answerNumber;

 Answer(this.selectHandler, this.answerText, this.answerNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(right: 20.0,left: 20.0),
      child: RaisedButton(
        color: Colors.blue[300],
        textColor: Colors.white,
        child: Text(answerText[answerNumber]),
        onPressed: selectHandler,
      ),
    );
  }
}
