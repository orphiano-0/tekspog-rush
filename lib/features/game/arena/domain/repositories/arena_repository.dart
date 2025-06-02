import 'package:tekspogs/features/game/arena/domain/entity/arena_entity.dart';
import 'package:tekspogs/features/game/arena/domain/entity/bet_entity.dart';

abstract class ArenaRepository {
  Future<List<ArenaEntity>> getArenaHistory();
  Future<BetEntity> placeBet({
    required String userId,
    required String pogPath,
    required double betAmount,
  });
  Future<List<ArenaEntity>> getRoundActivity();
  Future<ArenaEntity> saveRound(ArenaEntity arena);
}
