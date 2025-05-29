import 'package:tekspogs/features/game/arena/domain/entity/arena.dart';

class ArenaModel extends Arena {
  ArenaModel({
    required String roundId,
    required String userId,
    required String pog,
    required double betAmount,
    required double userBalance,
    required String whoWon,
    required DateTime roundDate,
  }) : super(
         roundId: roundId,
         userId: userId,
         pog: pog,
         betAmount: betAmount,
         userBalance: userBalance,
         whoWon: whoWon,
         roundDate: roundDate,
       );

  factory ArenaModel.fromJson(Map<String, dynamic> json) {
    return ArenaModel(
      roundId: json['roundId'],
      userId: json['userId'],
      pog: json['pog'],
      betAmount: json['betAmount'],
      userBalance: json['userBalance'],
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
      'userBalance': userBalance,
      'whoWon': whoWon,
      'roundDate': roundDate,
    };
  }
}
