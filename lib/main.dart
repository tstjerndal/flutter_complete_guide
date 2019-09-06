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
      'answers': ['Black', 'Red', 'Gren', 'White'],
    },
    {
      'questionText': 'Whats your favorite animal',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who is your favorit Person',
      'answers': ['Louise', 'Louis2', 'Louise3', 'Louise4'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      print('We hav more questions');
    }
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
            : Result(),
      ),
    );
  }
}
