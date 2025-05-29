class Arena {
  final String roundId;
  final String userId;
  final String pog; //pogPath
  final double betAmount;
  final double userBalance;
  final String whoWon;
  final DateTime roundDate;

  Arena({
    required this.roundId,
    required this.userId,
    required this.pog,
    required this.betAmount,
    required this.userBalance,
    required this.whoWon,
    required this.roundDate,
  });
}
