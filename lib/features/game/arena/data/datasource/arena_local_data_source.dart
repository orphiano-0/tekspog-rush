import 'package:tekspogs/features/game/arena/data/models/arena_model.dart';
import 'package:tekspogs/features/game/arena/domain/entity/arena_entity.dart';
import 'package:tekspogs/features/game/arena/domain/entity/bet_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ArenaLocalDataSource {
  Future<List<ArenaModel>> getArenaHistory();
  Future<BetEntity> placeBet({
    required String userId,
    required String pogPath,
    required double betAmount,
  });
  Future<List<ArenaModel>> getRoundActivity();

  Future<void> saveRound(ArenaEntity arena);
}

class ArenaLocalDataSourceImpl implements ArenaLocalDataSource {
  final SharedPreferences sharedPreferences;

  ArenaLocalDataSourceImpl(this.sharedPreferences);

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
  Future<List<ArenaModel>> getRoundActivity() async {
    return [];
  }

  @override
  Future<void> saveRound(ArenaEntity arena) async {}
}

// should include whether the pog is facing front or back here
