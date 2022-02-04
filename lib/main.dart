import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];

  MyApp({Key? key}) : super(key: key);
  void answerQuestion() {
    questionIndex += 1;
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
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
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
