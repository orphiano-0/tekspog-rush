import 'package:tekspogs/features/game/arena/domain/entity/arena_entity.dart';
import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';

class GetRoundActivityUsecase {
  final ArenaRepository arenaRepository;

  GetRoundActivityUsecase(this.arenaRepository);

  Future<List<ArenaEntity>> call() async {
    return await arenaRepository.getRoundActivity();
  }
}
