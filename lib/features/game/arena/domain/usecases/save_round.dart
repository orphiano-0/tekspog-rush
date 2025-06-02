import 'package:tekspogs/features/game/arena/domain/entity/arena_entity.dart';
import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';

class SaveRoundUsecase {
  final ArenaRepository arenaRepository;

  SaveRoundUsecase(this.arenaRepository);

  Future<ArenaEntity> execute() async {
    return await arenaRepository.saveRound();
  }
}
