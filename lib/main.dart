import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  var obj = MyApp();
  runApp(obj);
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionindex = 0;
  var _totalScore = 0;

  void _reset() {
    setState(() {
      _questionindex = 0;
      _totalScore = 0;
    });
  }

  void _answerquestion(int score) {
    _totalScore += score;
    setState(() {
      _questionindex++;
    });
  }

  final _questions = const [
    {
      'questionsmade': 'Who is your favourite Footballer?',
      'a': [
        {'text': 'Cristiano Ronaldo', 'score': 90},
        {
          'text': 'Messi',
          'score': 80,
        },
        {'text': 'Neymar', 'score': 70},
      ],
    },
    {
      'questionsmade': 'Who is your favourite Cricketer?',
      'a': [
        {'text': 'M.S. Dhoni', 'score': 80},
        {'text': 'Sachin', 'score': 70},
        {'text': 'Virat', 'score': 90},
      ],
    },
    {
      'questionsmade': 'Who is your favourite women player?',
      'a': [
        {'score': 90, 'text': 'Chanu Saikhom Mirabai'},
        {'text': 'Karnam Malleswari', 'score': 70},
        {'text': 'Mary Kom', 'score': 90},
      ],
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 120, 105, 1),
          title: Text('First App - Guess it'),
        ),
        body: (_questionindex < _questions.length)
            ? Quiz(
                answerQuestion: _answerquestion,
                questions: _questions,
                questionindex: _questionindex,
              )
            : Result(_totalScore, _reset),
      ),
    );
  }
}
