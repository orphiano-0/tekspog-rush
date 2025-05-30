import 'package:equatable/equatable.dart';
import 'package:tekspogs/features/game/arena/domain/entity/arena_entity.dart';

abstract class ArenaState extends Equatable {
  @override
  List<Object> get props => [];
}

class ArenaInitial extends ArenaState {}

class ArenaLoading extends ArenaState {}

class ArenaHistory extends ArenaState {}

class ArenaActivity extends ArenaState {
  final List<ArenaEntity> arena;

  ArenaActivity(this.arena);
}

class ArenaRoundStarted extends ArenaState {}

class ArenaRoundEnded extends ArenaState {}

class ArenaFailure extends ArenaState {
  final String error;

  ArenaFailure(this.error);
}
