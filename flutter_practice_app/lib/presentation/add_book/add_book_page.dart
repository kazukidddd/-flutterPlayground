import 'package:flutter/material.dart';
import 'package:flutterpracticeapp/presentation/add_book/add_book_model.dart';
import 'package:provider/provider.dart';

class AddBookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AddBookModel>(
      create: (_) => AddBookModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '本一覧',
          ),
        ),
        body: Consumer<AddBookModel>(
          builder: (context, model, child) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    onChanged: (text) {
                      model.bookTitle = text;
                    },
                  ),
                  RaisedButton(
                    child: Text('追加する'),
                    onPressed: () async {
                      // todo: firestoreに追加する

                      try {
                        await model.addBookToFirebase();

                        await showDialog<void>(
                          context: context,
//                        barrierDismissible: false, // user must tap button!
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('保存しました'),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );

                        Navigator.of(context).pop();
                      } catch (e) {
                        showDialog<void>(
                          context: context,
//                        barrierDismissible: false, // user must tap button!
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(e.toString()),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
