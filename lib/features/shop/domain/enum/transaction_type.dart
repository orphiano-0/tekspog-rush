enum TransactionType {
  unknown(0, "Unknown"),
  deposit(1, "Deposit"),
  withdrawal(2, "Withdrawal");

  final int id;
  final String label;

  const TransactionType(this.id, this.label);

  static TransactionType fromId(int id) {
    return TransactionType.values.firstWhere(
      (type) => type.id == id,
      orElse: () => TransactionType.unknown,
    );
  }
}
