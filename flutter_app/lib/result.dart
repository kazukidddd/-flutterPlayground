import 'package:flutter/material.dart';
import 'package:flutter_app/clear.dart';

class Result extends StatelessWidget {
  final Function clearQuestion;

  Result(this.clearQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'you did it',
          style: TextStyle(fontSize: 28),
        ),
        Clear(clearQuestion)
      ],
    );
  }
}
