import 'package:tekspogs/features/game/arena/data/models/arena_model.dart';
import 'package:tekspogs/features/game/arena/domain/entity/arena_entity.dart';
import 'package:tekspogs/features/game/arena/domain/entity/bet_entity.dart';
import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';

class ArenaLocalDataSource implements ArenaRepository {
  @override
  Future<List<ArenaModel>> getArenaHistory() async {
    return [];
  }

  @override
  Future<BetEntity> placeBet({
    required String userId,
    required String pogPath,
    required double betAmount,
  }) async {
    return BetEntity(userId: userId, pogPath: pogPath, betAmount: betAmount);
  }

  @override
  Future<List<ArenaEntity>> getRoundActivity() async {
    return [];
  }

  @override
  Future<void> saveRound(ArenaEntity arena) async {}
}

// should include whether the pog is facing front or back here
