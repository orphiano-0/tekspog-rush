import 'package:tekspogs/features/game/arena/domain/entity/arena_entity.dart';

abstract class ArenaRepository {
  Future<List<ArenaEntity>> getArenaHistory();
  Future<void> placeBet(String userId, String pogPath, double betAmount);
  Future<List<ArenaEntity>> getRoundActivity();
  Future<void> saveRound(ArenaEntity arena);
}
