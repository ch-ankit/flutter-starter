class Transaction {
  String id;
  String title;
  double amount;
  DateTime time;

  Transaction(
      {required this.id,
      required this.title,
      required this.amount,
      required this.time});
}
