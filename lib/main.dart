import 'package:flutter/material.dart';

import './question.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer1'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer2 chosen'),
              child: const Text('Answer2'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Answer3 chosen');
              },
              child: const Text('Answer3'),
            )
          ],
        ),
      ),
    );
  }
}
