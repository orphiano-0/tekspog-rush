import 'package:tekspogs/features/game/arena/data/datasource/arena_local_data_source.dart';
import 'package:tekspogs/features/game/arena/data/models/arena_model.dart';
import 'package:tekspogs/features/game/arena/domain/entity/arena.dart';
import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';

class ArenaRepositoryImpl implements ArenaRepository {
  final ArenaLocalDataSource arenaLocalDataSource;

  ArenaRepositoryImpl({required this.arenaLocalDataSource});

  @override
  Future<List<Arena>> getArenaHistory() async {
    final arenaModels = await arenaLocalDataSource.getArenaHistory();
    return arenaModels;
  }

  @override
  Future<void> saveRound(Arena arena) async {
    await arenaLocalDataSource.saveRound(
      ArenaModel(
        roundId: arena.roundId,
        userId: arena.userId,
        pog: arena.pog,
        betAmount: arena.betAmount,
        whoWon: arena.whoWon,
        roundDate: arena.roundDate,
      ),
    );
  }

  @override
  Future<void> placeBet(String userId, String pog, double betAmount) async {}
}
