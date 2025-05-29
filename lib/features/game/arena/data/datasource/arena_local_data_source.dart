import 'package:tekspogs/features/game/arena/data/models/arena_model.dart';
import 'package:tekspogs/features/game/arena/domain/entity/arena.dart';
import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';

class ArenaLocalDataSource implements ArenaRepository {
  @override
  Future<List<ArenaModel>> getArenaHistory() async {
    return [];
  }

  @override
  Future<void> placeBet(String userId, String pog, double betAmount) async {}

  @override
  Future<void> getRoundActivity({
    required String userId,
    required String pog,
    required double betAmount,
    required double userBalance,
  }) async {}

  @override
  Future<void> saveRound(Arena arena) async {}
}

// should include whether the pog is facing front or back here
