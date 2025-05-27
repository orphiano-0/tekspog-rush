import 'package:tekspogs/features/game/domain/entity/bet.dart';

abstract class GameRepositories {}

abstract class BetRepository {
  Future<void> placeBet(Bet bet);
  Future<List<Bet>> getUserBets(String userId);
  Future<void> updateUserBalance(String userId, double amount);
  Future<String> getWinningCard();
}
