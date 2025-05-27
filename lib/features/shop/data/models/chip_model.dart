import 'package:floor/floor.dart';
import 'package:flutter/widgets.dart';
import 'package:tekspogs/features/shop/domain/entity/chip.dart';

@Entity(tableName: 'chips')
class ChipModel {
  @PrimaryKey()
  final int productId;
  final double chipAmount;
  final String chipsValue;
  final String image;
  final double chipPrice;
  final List<Color> gradientColor;

  ChipModel({
    required this.productId,
    required this.chipAmount,
    required this.chipsValue,
    required this.image,
    required this.chipPrice,
    required this.gradientColor,
  });

  Chips toEntity() => Chips(
    productId: productId,
    chipAmount: chipAmount,
    chipsValue: chipsValue,
    image: image,
    chipPrice: chipPrice,
    gradientColor: gradientColor,
  );

  factory ChipModel.fromEntity(Chips chip) => ChipModel(
    productId: chip.productId,
    chipAmount: chip.chipAmount,
    chipsValue: chip.chipsValue,
    image: chip.image,
    chipPrice: chip.chipPrice,
    gradientColor: chip.gradientColor,
  );
}
