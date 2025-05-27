import 'package:tekspogs/features/shop/domain/entity/transaction.dart';
import 'package:tekspogs/features/shop/domain/repositories/shop_repository.dart';

class Buy {
  final ShopRepository shopRepository;

  Buy(this.shopRepository);

  Future<void> call(String userId, int productId) async {
    final product = await shopRepository.getProduct(productId);
    final user = await shopRepository.getUser(userId);
    if (user.balance < product.price) throw Exception('Insufficient balance');
    // if (product.stock <= 0) throw Exception('Product out of stock');
    final transaction = Transaction(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      userId: userId,
      productId: productId,
      productType: '',
      amount: product.price,
      quantity: 1,
      timestamp: DateTime.now(),
    );
    await shopRepository.buyProduct(
      userId,
      productId,
      product.price,
      transaction.quantity,
    );
    await shopRepository.saveTransaction(transaction);
  }
}
