// lib/data/datasources/shop_dao.dart
import 'package:floor/floor.dart';
import 'package:tekspogs/core/data/user_model.dart';
import 'package:tekspogs/features/shop/data/models/product_model.dart';
import 'package:tekspogs/features/shop/data/models/transaction_model.dart';

@dao
abstract class ShopDao {
  @Query('SELECT * FROM users WHERE id = :id')
  Future<UserModel?> getUser(String id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertUser(UserModel user);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateUser(UserModel user);

  @Query('SELECT * FROM products WHERE id = :id')
  Future<ProductModel?> getProduct(String id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertProduct(ProductModel product);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateProduct(ProductModel product);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertTransaction(TransactionModel transaction);

  @Query('SELECT * FROM transactions WHERE userId = :userId')
  Future<List<TransactionModel>> getTransactions(String userId);

  @transaction
  Future<void> buyProductTransaction(
    UserModel user,
    ProductModel product,
    TransactionModel transaction,
  ) async {
    await updateUser(user);
    await updateProduct(product);
    await insertTransaction(transaction);
  }
}
