import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';

class GetRoundActivity {
  final ArenaRepository arenaRepository;

  GetRoundActivity(this.arenaRepository);

  Future<void> call(
    String userId,
    String pogPath,
    double betAmount,
    double userBalance,
  ) async {
    return await arenaRepository.getRoundActivity(
      userId: userId,
      pogPath: pogPath,
      betAmount: betAmount,
      userBalance: userBalance,
    );
  }
}
