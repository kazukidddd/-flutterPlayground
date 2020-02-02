import 'package:flutter/material.dart';

class Clear extends StatelessWidget {
  final Function selectHandler;

  Clear(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(right: 20.0, left: 20.0),
      child: RaisedButton(
        color: Colors.blue[300],
        textColor: Colors.white,
        child: Text('clear',),
        onPressed: selectHandler,
      ),
    );
  }
}
