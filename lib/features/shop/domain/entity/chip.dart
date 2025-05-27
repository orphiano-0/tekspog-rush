import 'dart:ui';

class Chips {
  final int productId;
  final double chipAmount;
  final String chipsValue;
  final String image;
  final double chipPrice;
  final List<Color> gradientColor;

  Chips({
    required this.productId,
    required this.chipAmount,
    required this.chipsValue,
    required this.image,
    required this.chipPrice,
    required this.gradientColor,
  });
}
