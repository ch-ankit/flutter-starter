import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final transactionController = TextEditingController();
  final amountController = TextEditingController();
  void Function(String, String, DateTime) addTransaction;

  NewTransaction(this.addTransaction);

  void SubmitData() {
    final enteredTitle = transactionController.text;
    final enteredAmount = amountController.text;
    if (enteredTitle.isEmpty || double.parse(enteredAmount) <= 0) {
      return;
    }
    addTransaction(
        transactionController.text, amountController.text, DateTime.now());
  }

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
                  onSubmitted: (_) => SubmitData(),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  onSubmitted: (_) => SubmitData(),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: SubmitData,
                  child: Text(
                    "Add Transaction",
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold),
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
