import 'package:tekspogs/features/game/arena/domain/entity/arena_entity.dart';
import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';

class SaveRoundUsecase {
  final ArenaRepository arenaRepository;

  SaveRoundUsecase(this.arenaRepository);

  Future<void> execute(ArenaEntity arena) async {
    return await arenaRepository.saveRound(arena);
  }
}
