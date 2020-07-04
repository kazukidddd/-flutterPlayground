import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'book_list.dart';
import 'main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final kazukiText = 'kazukiのprovider勉強';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
//        primaryColor: Colors.white,
          ),
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'providerの勉強',
              textAlign: TextAlign.start,
            ),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  Text(
                    model.kazukiText,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  RaisedButton(
                    child: Text('ボタン'),
                    onPressed: () {
                      // todo
//                      model.changeKazukiText();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookList()),
                      );
                    },
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  final items = ['saf', 'fds', 'faad'];
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("kazuki"),
//        actions: <Widget>[
//          Icon(
//            Icons.add,
//          ),
//          Icon(Icons.share)
//        ],
//      ),
//      body: Container(
//        width: double.infinity,
//        child: GridView.count(
//          // Create a grid with 2 columns. If you change the scrollDirection to
//          // horizontal, this produces 2 rows.
//          crossAxisCount: 2,
//          // Generate 100 widgets that display their index in the List.
//          children: List.generate(100, (index) {
//            return Column(
//              children: <Widget>[
//                Expanded(
//                  child: Image.asset('images/kboy.jpg'),
//                ),
//                Text('$index'),
//              ],
//            );
//          }),
//        ),
//      ),
//    );
//  }
//}
