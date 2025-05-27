import 'package:flutter/rendering.dart';

class Pog {
  final int productId;
  final String imagePath;
  final String name;
  final String pogLore;
  final List<Color> gradientColor;
  final double value;
  final String rarity;

  Pog({
    required this.productId,
    required this.imagePath,
    required this.name,
    required this.pogLore,
    required this.gradientColor,
    required this.value,
    required this.rarity,
  });
}
