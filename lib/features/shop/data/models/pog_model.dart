import 'package:floor/floor.dart';
import 'package:flutter/widgets.dart';
import 'package:tekspogs/features/shop/domain/entity/pog.dart';

@Entity(tableName: 'pogs')
class PogModel {
  @PrimaryKey()
  final int productId;
  final String imagePath;
  final String name;
  final String pogLore;
  final List<Color> gradientColor;
  final double value;
  final String rarity;

  PogModel({
    required this.productId,
    required this.imagePath,
    required this.name,
    required this.pogLore,
    required this.gradientColor,
    required this.value,
    required this.rarity,
  });

  Pog toEntity() => Pog(
    productId: productId,
    imagePath: imagePath,
    name: name,
    pogLore: pogLore,
    gradientColor: gradientColor,
    value: value,
    rarity: rarity,
  );

  factory PogModel.fromEntity(Pog pog) => PogModel(
    productId: pog.productId,
    imagePath: pog.imagePath,
    name: pog.name,
    pogLore: pog.pogLore,
    gradientColor: pog.gradientColor,
    value: pog.value,
    rarity: pog.rarity,
  );
}
