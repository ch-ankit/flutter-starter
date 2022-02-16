import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final void Function() resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultText {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Your Score is:${resultScore}.You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'Your Score is:${resultScore}.You are ... strange?';
    } else {
      resultText = 'Your Score is:${resultScore}.You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: resetHandler,
            splashColor: Colors.red.shade100,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              color: Colors.red.shade100,
              child: Text('Restart Quiz'),
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
