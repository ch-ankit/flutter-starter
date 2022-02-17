import 'package:flutter/material.dart';

import './widgets/user_transaction.dart';

void main() => runApp(MyHompage());

class MyHompage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Homepage'),
        ),
        body: Column(
          children: <Widget>[
            Card(
              child: Container(
                child: Text(
                  'Chart',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                width: double.infinity,
                alignment: Alignment.center,
              ),
              color: Colors.blue,
              elevation: 3,
            ),
            UserTransactions()
          ],
        ),
      ),
    );
  }
}
