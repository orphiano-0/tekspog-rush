// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arena_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArenaModel _$ArenaModelFromJson(Map<String, dynamic> json) => ArenaModel(
      roundId: json['roundId'] as String,
      userId: json['userId'] as String,
      pogPath: json['pogPath'] as String,
      betAmount: (json['betAmount'] as num).toDouble(),
      userBalance: (json['userBalance'] as num).toDouble(),
      whoWon: json['whoWon'] as String,
      roundDate: DateTime.parse(json['roundDate'] as String),
    );

Map<String, dynamic> _$ArenaModelToJson(ArenaModel instance) =>
    <String, dynamic>{
      'roundId': instance.roundId,
      'userId': instance.userId,
      'pogPath': instance.pogPath,
      'betAmount': instance.betAmount,
      'userBalance': instance.userBalance,
      'whoWon': instance.whoWon,
      'roundDate': instance.roundDate.toIso8601String(),
    };
