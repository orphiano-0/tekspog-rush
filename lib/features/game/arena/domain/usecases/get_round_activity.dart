import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';

class GetRoundActivity {
  final ArenaRepository arenaRepository;

  GetRoundActivity(this.arenaRepository);

  Future<void> execute(
    String userId,
    String pog,
    double betAmount,
    double userBalance,
  ) async {
    return await arenaRepository.getRoundActivity(
      userId: userId,
      pog: pog,
      betAmount: betAmount,
      userBalance: userBalance,
    );
  }
}
