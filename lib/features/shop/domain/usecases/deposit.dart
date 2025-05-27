import 'package:tekspogs/features/shop/domain/repositories/shop_repository.dart';

class Deposit {
  final ShopRepository shopRepository;

  Deposit(this.shopRepository);

  Future<void> call(String userId, double amount) async {
    if (amount <= 0) throw Exception('Amount must be positive');
    await shopRepository.depositFunds(userId, amount);
  }
}
