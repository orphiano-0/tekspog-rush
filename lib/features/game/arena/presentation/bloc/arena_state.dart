import 'package:equatable/equatable.dart';
import 'package:tekspogs/features/game/arena/domain/entity/arena_entity.dart';
import 'package:tekspogs/features/game/arena/domain/entity/bet_entity.dart';
import 'package:tekspogs/features/game/arena/domain/usecases/place_bet.dart';
import 'package:tekspogs/features/game/arena/presentation/bloc/arena_event.dart';

abstract class ArenaState extends Equatable {
  @override
  List<Object> get props => [];
}

class ArenaInitial extends ArenaState {}

class ArenaLoading extends ArenaState {}

class ArenaHistoryLoading extends ArenaState {}

class ArenaHistoryLoaded extends ArenaState {
  final List<ArenaEntity> arenaHistory;

  ArenaHistoryLoaded(this.arenaHistory);
}

class ArenaActivity extends ArenaState {
  final List<ArenaEntity> arena;

  ArenaActivity(this.arena);
}

class ArenaRoundStarted extends ArenaState {
  final BetEntity placeBet;

  ArenaRoundStarted(this.placeBet);
}

class ArenaRoundEnded extends ArenaState {}

class ArenaFailure extends ArenaState {
  final String error;

  ArenaFailure(this.error);
}
