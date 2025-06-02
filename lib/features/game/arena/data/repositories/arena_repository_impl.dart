import 'package:tekspogs/features/game/arena/data/datasource/arena_local_data_source.dart';
import 'package:tekspogs/features/game/arena/data/models/arena_model.dart';
import 'package:tekspogs/features/game/arena/domain/entity/arena_entity.dart';
import 'package:tekspogs/features/game/arena/domain/entity/bet_entity.dart';
import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';

class ArenaRepositoryImpl implements ArenaRepository {
  final ArenaLocalDataSource arenaLocalDataSource;

  ArenaRepositoryImpl({required this.arenaLocalDataSource});

  @override
  Future<List<ArenaEntity>> getArenaHistory() async {
    final arenaModels = await arenaLocalDataSource.getArenaHistory();
    return arenaModels;
  }

  @override
  Future<ArenaEntity> saveRound(ArenaEntity arena) async {
    await arenaLocalDataSource.saveRound(arena);
  }

  @override
  Future<BetEntity> placeBet({
    required String userId,
    required String pogPath,
    required double betAmount,
  }) async {
    final placeBetImpl = await arenaLocalDataSource.placeBet(
      userId: userId,
      pogPath: pogPath,
      betAmount: betAmount,
    );

    return placeBetImpl;
  }

  @override
  Future<List<ArenaEntity>> getRoundActivity() async {
    final currentRoundModel = await arenaLocalDataSource.getRoundActivity();
    return currentRoundModel;
  }
}
