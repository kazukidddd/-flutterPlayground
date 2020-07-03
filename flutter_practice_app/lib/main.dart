import 'package:flutter/material.dart';
import 'package:flutterpracticeapp/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(100, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.ondemand_video),
          title: Text(
            'YouTubeアプリ',
            textAlign: TextAlign.start,
          ),
          actions: <Widget>[
            SizedBox(
              width: 36,
              child: FlatButton(
                child: Icon(Icons.ac_unit),
                onPressed: () {
                  // todo
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SizedBox(
                width: 36,
                child: FlatButton(
                  child: Icon(Icons.more_vert),
                  onPressed: () {
                    // todo
                  },
                ),
              ),
            )
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset('images/kboy.jpg'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'kazukiのyoutube大学',
                        ),
                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.ondemand_video,
                                color: Colors.red,
                              ),
                              Text('登録する'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NextPage('sfdf'),
                            ));
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.asset('images/kboy.jpg'),
                      title: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'kazukiのflutter基礎',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '234回再生',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                '6日前',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
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
