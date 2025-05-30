import 'package:tekspogs/features/game/arena/data/datasource/arena_local_data_source.dart';
import 'package:tekspogs/features/game/arena/data/models/arena_model.dart';
import 'package:tekspogs/features/game/arena/domain/entity/arena.dart';
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
  Future<void> saveRound(ArenaEntity arena) async {
    await arenaLocalDataSource.saveRound(
      ArenaModel(
        roundId: arena.roundId,
        userId: arena.userId,
        pogPath: arena.pogPath,
        betAmount: arena.betAmount,
        userBalance: arena.userBalance,
        whoWon: arena.whoWon,
        roundDate: arena.roundDate,
      ),
    );
  }

  @override
  Future<void> placeBet(
    String userId,
    String pogPath,
    double betAmount,
  ) async {}

  @override
  Future<void> getRoundActivity({
    required String userId,
    required String pogPath,
    required double betAmount,
    required double userBalance,
  }) async {
    final currentRoundModel = await arenaLocalDataSource.getRoundActivity(
      userId: userId,
      pogPath: pogPath,
      betAmount: betAmount,
      userBalance: userBalance,
    );
    return currentRoundModel;
  }
}
