import 'package:tekspogs/features/shop/domain/repositories/shop_repository.dart';

class Withdraw {
  final ShopRepository shopRepository;

  Withdraw(this.shopRepository);

  Future<void> call(String userId, double amount) async {
    if (amount <= 0) throw Exception('Amount must be positive');
    final user = await shopRepository.getUser(userId);
    if (user.balance < amount) throw Exception('Insufficient balance');
    await shopRepository.withdrawFunds(userId, amount);
  }
}
