
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {

  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("次の画面"),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(name),
            Center(
              child:RaisedButton(
                color: Colors.yellow,
                child: Text('戻る'),
                onPressed: (){
                  // 戻る処理
                  Navigator.pop(context, 'kazukidddd');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}