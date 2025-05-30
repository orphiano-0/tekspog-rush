import 'package:json_annotation/json_annotation.dart';
import 'package:tekspogs/features/game/arena/domain/entity/arena_entity.dart';

part 'arena_model.g.dart';

@JsonSerializable()
class ArenaModel extends ArenaEntity {
  ArenaModel({
    required super.roundId,
    required super.userId,
    required super.pogPath,
    required super.betAmount,
    required super.userBalance,
    required super.whoWon,
    required super.roundDate,
  });

  factory ArenaModel.fromJson(Map<String, dynamic> json) =>
      _$ArenaModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArenaModelToJson(this);
}
