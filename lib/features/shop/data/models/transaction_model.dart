import 'package:floor/floor.dart';
import 'package:tekspogs/features/shop/domain/entity/transaction.dart';

@Entity(tableName: 'transactions')
class TransactionModel {
  @PrimaryKey()
  final String? id;
  final String userId;
  final int productId; // id of chip and pog
  final String productType; // chip or pog
  final double amount; // cost of the transaction
  final int quantity;
  final DateTime timestamp;

  TransactionModel({
    required this.id,
    required this.userId,
    required this.productId,
    required this.productType,
    required this.amount,
    required this.quantity,
    required this.timestamp,
  });

  Transaction toEntity() => Transaction(
    id: id,
    userId: userId,
    productId: productId,
    productType: productType,
    amount: amount,
    quantity: quantity,
    timestamp: timestamp,
  );

  factory TransactionModel.fromEntity(Transaction transaction) =>
      TransactionModel(
        id: transaction.id,
        userId: transaction.userId,
        productId: transaction.productId,
        productType: transaction.productType,
        amount: transaction.amount,
        quantity: transaction.quantity,
        timestamp: transaction.timestamp,
      );
}
