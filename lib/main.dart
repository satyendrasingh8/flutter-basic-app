import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
      {
        'questionText': 'What\'s your favourite color? ',
        'answers': ['black', 'red', 'green', 'white']
      },
      {
        'questionText': 'What\'s your favourite animal? ',
        'answers': ['snake', 'elephant', 'lion', 'rabbit']
      },
      {
        'questionText': 'What\'s your favourite instructor? ',
        'answers': ['Max', 'Max2', 'Max3', 'Max4']
      },
    ];
  var _questionIndex = 0;
  void _answerQuestion() {
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
        body:(_questionIndex < questions.length) ? Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion,answer);
            }).toList()
          ], 
        ) : Center(child:Text('you did it',style: TextStyle(fontSize: 30.0),))
      ),
    );
  }
}
