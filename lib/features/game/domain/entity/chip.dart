class Chip {
  final double betValue;
  Chip(this.betValue);

  isValid() {
    return [10.0, 50.0, 100.0].contains(betValue);
  }
}
