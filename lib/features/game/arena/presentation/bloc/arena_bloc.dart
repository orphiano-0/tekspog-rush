import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tekspogs/features/game/arena/domain/usecases/get_history.dart';
import 'package:tekspogs/features/game/arena/domain/usecases/get_round_activity.dart';
import 'package:tekspogs/features/game/arena/domain/usecases/place_bet.dart';
import 'package:tekspogs/features/game/arena/domain/usecases/save_round.dart';
import 'package:tekspogs/features/game/arena/presentation/bloc/arena_event.dart';
import 'package:tekspogs/features/game/arena/presentation/bloc/arena_state.dart';

class ArenaBloc extends Bloc<ArenaEvent, ArenaState> {
  final GetHistoryUsecase getHistoryUsecase;
  final GetRoundActivityUsecase getRoundActivityUsecase;
  final PlaceBetUsecase placeBetUsecase;
  final SaveRoundUsecase saveRoundUsecase;

  ArenaBloc({
    required this.getHistoryUsecase,
    required this.getRoundActivityUsecase,
    required this.placeBetUsecase,
    required this.saveRoundUsecase,
  }) : super(ArenaInitial()) {
    on<StartRoundArena>(_loadedArenaActivity);
    on<FetchArenaHistory>(_loadArenaHistory);

    on<PlaceBet>(_placeBet);
  }

  Future<void> _loadedArenaActivity(
    StartRoundArena event,
    Emitter<ArenaState> emit,
  ) async {
    emit(ArenaLoading());

    try {
      final arenaActivity = await getRoundActivityUsecase.call();

      emit(ArenaActivity(arenaActivity));
    } catch (e) {
      ArenaFailure(e.toString());
    }
  }

  Future<void> _loadArenaHistory(
    FetchArenaHistory event,
    Emitter<ArenaState> emit,
  ) async {
    emit(ArenaLoading());

    try {
      final arenaHistory = await getHistoryUsecase.call();

      emit(ArenaHistoryLoaded(arenaHistory));
    } catch (e) {
      ArenaFailure(e.toString());
    }
  }

  Future<void> _placeBet(PlaceBet event, Emitter<ArenaState> emit) async {
    emit(ArenaLoading());

    try {
      final placeBet = await placeBetUsecase.execute(
        event.userId,
        event.pogPath,
        event.betAmount,
      );

      emit(ArenaRoundStarted(placeBet));
    } catch (e) {
      emit(ArenaFailure(e.toString()));
    }
  }
}
