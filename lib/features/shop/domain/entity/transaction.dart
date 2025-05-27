class Transaction {
  final String? id;
  final String userId;
  final int productId; // id of chip and pog
  final String productType; // chip or pog
  final double amount; // cost of the transaction
  final int quantity;
  final DateTime timestamp;

  Transaction({
    required this.id,
    required this.userId,
    required this.productId,
    required this.productType,
    required this.amount,
    required this.quantity,
    required this.timestamp,
  });
}
