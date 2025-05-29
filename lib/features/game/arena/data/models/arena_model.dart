import 'package:tekspogs/features/game/arena/domain/entity/arena.dart';

class ArenaModel extends Arena {
  ArenaModel({
    required String roundId,
    required String userId,
    required String pog,
    required double betAmount,
    required String whoWon,
    required DateTime roundDate,
  }) : super(
         roundId: roundId,
         userId: userId,
         pog: pog,
         betAmount: betAmount,
         whoWon: whoWon,
         roundDate: roundDate,
       );

  factory ArenaModel.fromJson(Map<String, dynamic> json) {
    return ArenaModel(
      roundId: json['roundId'],
      userId: json['userId'],
      pog: json['pog'],
      betAmount: json['betAmount'],
      whoWon: json['whoWon'],
      roundDate: json['roundDate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'roundId': roundId,
      'userId': userId,
      'pog': pog,
      'betAmount': betAmount,
      'whoWon': whoWon,
      'roundDate': roundDate,
    };
  }
}
