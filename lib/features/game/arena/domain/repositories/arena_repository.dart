import 'package:tekspogs/features/game/arena/domain/entity/arena.dart';

abstract class ArenaRepository {
  Future<List<ArenaEntity>> getArenaHistory();
  Future<void> placeBet(String userId, String pogPath, double betAmount);
  Future<void> getRoundActivity({
    required String userId,
    required String pogPath,
    required double betAmount,
    required double userBalance,
  });
  Future<void> saveRound(ArenaEntity arena);
}
