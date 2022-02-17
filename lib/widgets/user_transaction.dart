import 'package:flutter/material.dart';

import './../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
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
        id: 't3', title: title, amount: double.parse(amount), time: time);
    setState(() {
      _userTransaction.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
