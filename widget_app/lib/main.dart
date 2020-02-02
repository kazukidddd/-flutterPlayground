import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  var _label = '';
  var _navIndex = 0;
  var _titles = ['Contacts', 'Map', 'Chat'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('俺のapp'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.pink,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text('Contacts'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text('Map'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('chat'),
            backgroundColor: Colors.black,
          ),
        ],
        onTap: (int index) {
          setState(() {
            _navIndex = index;
            _label = _titles[index];
          });
        },
        currentIndex: _navIndex,
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Center(
            child: Text(
              _label, 
              style: TextStyle(
                fontSize: 24,
                color: Colors.green
                )
              ),
          ),
        )
      ]),
    );
  }
}
