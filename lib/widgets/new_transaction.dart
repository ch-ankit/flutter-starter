import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final transactionController = TextEditingController();
  final amountController = TextEditingController();
  void Function(String, String, DateTime) addTransaction;

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 2,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Title'),
                  controller: transactionController,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                  controller: amountController,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.purple)),
                  child: TextButton(
                    onPressed: () {
                      addTransaction(transactionController.text,
                          amountController.text, DateTime.now());
                    },
                    child: Text(
                      "Add Transaction",
                      style: TextStyle(
                          color: Colors.purple, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
