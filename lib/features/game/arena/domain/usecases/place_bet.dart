import 'package:tekspogs/features/game/arena/domain/entity/bet_entity.dart';
import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';

class PlaceBetUsecase {
  final ArenaRepository arenaRepository;

  PlaceBetUsecase(this.arenaRepository);

  Future<BetEntity> execute(
    String userId,
    String pogPath,
    double betAmount,
  ) async {
    return await arenaRepository.placeBet(
      userId: userId,
      pogPath: pogPath,
      betAmount: betAmount,
    );
  }
}
