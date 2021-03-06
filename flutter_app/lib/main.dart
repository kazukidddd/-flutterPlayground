import 'dart:math';

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// _をつけることでprivateになる
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 3},
        {'text': 'Rabbit', 'score': 11},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 9}
      ],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1}
      ],
    }
  ];
  final rand = new Random();
  void _answerQuestion(int score) {

    _totalScore += score;
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }

    // _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      // if (_questionIndex == 0) {
      //   _questionIndex = _questionIndex + 1;
      // } else {
      //   _questionIndex = _questionIndex - 1;
      // }
      // _questionIndex = rand.nextInt(3);
    });
    print(_questionIndex);
  }

  void _clearQuestion() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,)
            : Result(_clearQuestion),
      ),
    );
  }
}
