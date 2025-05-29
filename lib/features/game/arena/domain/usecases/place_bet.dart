import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';

class PlaceBet {
  final ArenaRepository arenaRepository;

  PlaceBet(this.arenaRepository);

  Future<void> execute(String userId, String pog, double betAmount) async {
    return await arenaRepository.placeBet(userId, pog, betAmount);
  }
}
