import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    var format = DateFormat('yyyy-MM-dd');
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
            Card(
              elevation: 2,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(decoration: InputDecoration(labelText: 'Title')),
                    TextField(decoration: InputDecoration(labelText: 'Amount')),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple)),
                      child: TextButton(
                        onPressed: null,
                        child: Text(
                          "Add Transaction",
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(children: <Widget>[
              ...(_transactions
                  .map((tx) => Container(
                        height: 60,
                        child: Card(
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.purple, width: 2),
                                    ),
                                    padding: EdgeInsets.all(10),
                                    child: Text('\$${tx.amount}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.purple))),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      tx.title,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      format.format(tx.time),
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ))
                  .toList()),
            ]),
          ],
        ),
      ),
    );
  }
}
