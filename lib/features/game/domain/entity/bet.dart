class Bet {
  final String gameId;
  final String userId;
  final String pogImagePath;
  final double betAmount;
  final double amountResult;
  final DateTime timestamp;

  Bet({
    required this.gameId,
    required this.userId,
    required this.pogImagePath,
    required this.betAmount,
    required this.amountResult,
    required this.timestamp,
  });

  bool isBetValid() {
    return betAmount > 0 &&
        [
          'assets/images/pogs/pog_bayanihan.png',
          'assets/images/pogs/pog_jeep.png',
          'assets/images/pogs/pog_mask.png',
        ].contains(pogImagePath);
  }
}
