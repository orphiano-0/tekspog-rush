import 'package:tekspogs/features/game/arena/domain/entity/arena.dart';
import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';

class ArenaBet {
  final ArenaRepository arenaRepository;

  ArenaBet(this.arenaRepository);

  Future<List<ArenaEntity>> execute() async {
    return await arenaRepository.getArenaHistory();
  }
}
