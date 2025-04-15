import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget 
{
  @override
  State<StatefulWidget> createState()
  {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> 
{
  final _questions = const [
    {
      'Questions': 'What is the National Animal of India?',
      'Options': [
        {'text': 'Lion', 'score': 0},
        {'text': 'Tiger', 'score': 10},
        {'text': 'Giant Panda', 'score': 0},
        {'text': 'Markhor', 'score': 0}
      ]
    },
    {
      'Questions': 'What is the National Flower of India?',
      'Options': [
        {'text': 'Plum Blossom ', 'score': 0},
        {'text': 'Jasmine','score': 0},
        {'text': 'Lotus', 'score': 10},
        {'text': 'Rose', 'score': 0}
      ]
    },
    {
      'Questions':
          'What is the National Tree of India?',
      'Options': [
        {'text': 'Oak Tree', 'score': 0},
        {'text': 'Banayan Tree', 'score': 10},
        {'text': 'Maple Tree', 'score': 0},
        {'text': 'Mango', 'score':0}
      ]
    },
    {
      'Questions':
          'The National Bird of India is Peacock?',
      'Options': [
        {'text': 'True', 'score': 10},
        {'text': 'False', 'score': 0},
      ]
    },
    {
      'Questions':
          'The National Fruit of India is Pine Apple?',
      'Options': [
        {'text': 'True', 'score': 0},
        {'text': 'False', 'score': 10},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  
  void _resetQuiz() 
  {
    setState(() 
     {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score)
  {
    _totalScore += score;

    setState(()
     {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) 
    {
      print('We have more questions');
    }
    else 
    {
      print('End of the quiz');
    }
  }

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Welcome to the Quiz', textAlign: TextAlign.center),
            ),
            body: (_questionIndex < _questions.length)
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,)
                : Result(_totalScore, _resetQuiz),
                ),
                );
  }
}
