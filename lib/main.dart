import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Whats your favorite color',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Gren', 'score': 5},
        {'text': 'White', 'score': 2}
      ],
    },
    {
      'questionText': 'Whats your favorite animal',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 8},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 2}
      ],
    },
    {
      'questionText': 'Who is your favorit Person',
      'answers': [
        {'text': 'Louise', 'score': 10},
        {'text': 'Louis2', 'score': 8},
        {'text': 'Louise3', 'score': 5},
        {'text': 'Louise4', 'score': 2}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0 ;

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {
      print('We hav more questions');
    }
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My firs app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
