class Payment {
  final String paymentId;
  final String enrollmentId;
  final double amount;
  final DateTime date;
  final String status;
  final String method;

  const Payment({
    required this.paymentId,
    required this.enrollmentId,
    required this.amount,
    required this.date,
    required this.status,
    required this.method,
  });

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
    paymentId: json['paymentId'] as String,
    enrollmentId: json['enrollmentId'] as String,
    amount: (json['amount'] as num).toDouble(),
    date: DateTime.parse(json['date'] as String),
    status: json['status'] as String,
    method: json['method'] as String,
  );
}