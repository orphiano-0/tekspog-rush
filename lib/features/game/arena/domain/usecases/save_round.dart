import 'package:tekspogs/features/game/arena/domain/entity/arena.dart';
import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';

class SaveRound {
  final ArenaRepository arenaRepository;

  SaveRound(this.arenaRepository);

  Future<void> execute(ArenaEntity arena) async {
    return await arenaRepository.saveRound(arena);
  }
}
