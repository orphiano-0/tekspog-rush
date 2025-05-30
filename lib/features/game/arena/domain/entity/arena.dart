class ArenaEntity {
  final String roundId;
  final String userId;
  final String pogPath;
  final double betAmount;
  final double userBalance;
  final String whoWon;
  final DateTime roundDate;

  ArenaEntity({
    required this.roundId,
    required this.userId,
    required this.pogPath,
    required this.betAmount,
    required this.userBalance,
    required this.whoWon,
    required this.roundDate,
  });
}
