import 'package:tekspogs/features/game/arena/domain/entity/arena.dart';

abstract class ArenaRepository {
  Future<List<Arena>> getArenaHistory();
  Future<void> placeBet(String userId, String pog, double betAmount);
  Future<void> getRoundActivity(
    String userId,
    String pog,
    double betAmount,
    double userBalance,
  );
  Future<void> saveRound(Arena arena);
}
