import 'package:tekspogs/core/models/user.dart';
import 'package:tekspogs/features/shop/domain/entity/product.dart';
import 'package:tekspogs/features/shop/domain/entity/transaction.dart';

abstract class ShopRepository {
  Future<void> depositFunds(String userId, double amount);
  Future<void> withdrawFunds(String userId, double amount);
  Future<void> buyProduct(
    String userId,
    int productId,
    double amount,
    int quantity,
  );
  Future<User> getUser(String userId);
  Future<Product> getProduct(int productId);
  Future<void> saveTransaction(Transaction transaction);
  Future<List<Transaction>> getTransactions(String userId);
}
