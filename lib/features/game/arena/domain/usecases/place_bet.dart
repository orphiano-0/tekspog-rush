import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';

class PlaceBet {
  final ArenaRepository arenaRepository;

  PlaceBet(this.arenaRepository);

  Future<void> execute(String userId, String pogPath, double betAmount) async {
    return await arenaRepository.placeBet(userId, pogPath, betAmount);
  }
}
