import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransaction;
  TransactionList(this._userTransaction);

  @override
  Widget build(BuildContext context) {
    var format = DateFormat('yyyy-MM-dd');
    return Column(
      children: <Widget>[
        ...(_userTransaction
            .map((tx) => Container(
                  height: 60,
                  child: Card(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.purple, width: 2),
                              ),
                              padding: EdgeInsets.all(10),
                              child: Text('\$${tx.amount}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.purple))),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                tx.title,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                format.format(tx.time),
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                            ],
                          )
                        ]),
                  ),
                ))
            .toList()),
      ],
    );
  }
}
