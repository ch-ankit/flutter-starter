import 'package:flutter/material.dart';

import './widgets/transaction_list.dart';
import './widgets/new_transaction.dart';

import './models/transaction.dart';

void main() => runApp(MyHompage());

class MyHompage extends StatefulWidget {
  @override
  State<MyHompage> createState() => _MyHompageState();
}

class _MyHompageState extends State<MyHompage> {
  final List<Transaction> _userTransaction = [
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
  void _addNewTransaction(String title, String amount, DateTime time) {
    var newTransaction = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: double.parse(amount),
        time: time);
    setState(() {
      _userTransaction.add(newTransaction);
    });
  }

  void _startAtNewTransaction(ctx, txnFunction) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return NewTransaction(txnFunction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Homepage'),
          actions: <Widget>[
            Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    _startAtNewTransaction(context, _addNewTransaction);
                  },
                  icon: Icon(Icons.add)),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
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
              TransactionList(_userTransaction)
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () {
              _startAtNewTransaction(context, _addNewTransaction);
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
