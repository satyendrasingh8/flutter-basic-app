import 'package:flutter/material.dart';
import 'package:flutter_basics/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color? ',
      'answers': [
        {
          'text': 'black',
          'score': 10,
        },
        {
          'text': 'red',
          'score': 5,
        },
        {
          'text': 'green',
          'score': 3,
        },
        {
          'text': 'blue',
          'score': 2,
        }
      ]
    },
    {
      'questionText': 'What\'s your favourite animal? ',
      'answers': [
        {
          'text': 'rabbit',
          'score': 1,
        },
        {
          'text': 'lion',
          'score': 6,
        },
        {
          'text': 'elephant',
          'score': 7,
        },
        {
          'text': 'rabbit',
          'score': 6,
        }
      ]
    },
    {
      'questionText': 'What\'s your favourite instructor? ',
      'answers': [
        {
          'text': 'max1',
          'score': 10,
        },
        {
          'text': 'Max2',
          'score': 15,
        },
        {
          'text': 'Max3',
          'score': 3,
        },
        {
          'text': 'Max4',
          'score': 8,
        }
      ]
    },
  ];
  var _questionIndex = 0;
  int _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print('object chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('AppBar'),
            ),
            body: (_questionIndex < _questions.length)
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_totalScore)));
  }
}
