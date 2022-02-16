import 'package:flutter/material.dart';
import 'transaction.dart';

void main() => runApp(MyHompage());

class MyHompage extends StatelessWidget {
  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      time: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Grocerries',
      amount: 16.53,
      time: DateTime.now(),
    ),
  ];
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
            Column(children: <Widget>[
              ...(_transactions
                  .map((tx) => Card(
                        child: Text(tx.title),
                      ))
                  .toList()),
            ]),
          ],
        ),
      ),
    );
  }
}
