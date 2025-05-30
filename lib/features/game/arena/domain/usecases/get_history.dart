import 'package:tekspogs/features/game/arena/domain/entity/arena_entity.dart';
import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';

class GetHistoryUsecase {
  final ArenaRepository arenaRepository;

  GetHistoryUsecase(this.arenaRepository);

  Future<List<ArenaEntity>> execute() async {
    return await arenaRepository.getArenaHistory();
  }
}
