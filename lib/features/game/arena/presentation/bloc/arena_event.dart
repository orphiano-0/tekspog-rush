import 'package:equatable/equatable.dart';
import 'package:tekspogs/features/game/arena/domain/entity/arena_entity.dart';

abstract class ArenaEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class PlaceBet extends ArenaEvent {
  final String userId;
  final String pogPath;
  final double betAmount;

  PlaceBet(this.userId, this.pogPath, this.betAmount);

  @override
  List<Object> get props => [pogPath];
}

class ChooseBettingChips extends ArenaEvent {
  final String chipPath;

  ChooseBettingChips(this.chipPath);

  @override
  List<Object> get props => [chipPath];
}

class StartRoundArena extends ArenaEvent {
  final ArenaEntity arenaEntity;

  StartRoundArena(this.arenaEntity);

  @override
  List<Object> get props => [arenaEntity];
}

class EndRoundArena extends ArenaEvent {}

class FetchArenaHistory extends ArenaEvent {
  final List<ArenaEntity> arenaHistory;

  FetchArenaHistory(this.arenaHistory);

  @override
  List<Object> get props => [arenaHistory];
}
