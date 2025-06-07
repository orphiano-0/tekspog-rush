import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tekspogs/features/game/arena/data/datasource/arena_local_data_source.dart';
import 'package:tekspogs/features/game/arena/data/repositories/arena_repository_impl.dart';
import 'package:tekspogs/features/game/arena/domain/repositories/arena_repository.dart';
import 'package:tekspogs/features/game/arena/domain/usecases/get_history.dart';
import 'package:tekspogs/features/game/arena/domain/usecases/get_round_activity.dart';
import 'package:tekspogs/features/game/arena/domain/usecases/place_bet.dart';
import 'package:tekspogs/features/game/arena/domain/usecases/save_round.dart';
import 'package:tekspogs/features/game/arena/presentation/bloc/arena_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => ArenaBloc(
      getHistoryUsecase: sl(),
      getRoundActivityUsecase: sl(),
      placeBetUsecase: sl(),
      saveRoundUsecase: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => GetHistoryUsecase(sl()));
  sl.registerLazySingleton(() => GetRoundActivityUsecase(sl()));
  sl.registerLazySingleton(() => PlaceBetUsecase(sl()));
  sl.registerLazySingleton(() => SaveRoundUsecase(sl()));

  // Repository
  sl.registerLazySingleton<ArenaRepository>(
    () => ArenaRepositoryImpl(arenaLocalDataSource: sl()),
  );

  // Data source
  sl.registerLazySingleton<ArenaLocalDataSource>(
    () => ArenaLocalDataSourceImpl(sl()),
  );

  // Extenal
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
