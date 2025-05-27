import 'package:flutter/material.dart';

enum ChipCollection {
  twenty(1, 20, '20', 'assets/images/chips/50.png', 50, [
    Color(0XFF141414),
    Color.fromARGB(255, 133, 82, 28),
  ]),
  fifty(2, 50, '50', 'assets/images/chips/50.png', 100, [
    Color(0XFF141414),
    Color(0XFF852A1C),
  ]),
  hundredFifty(3, 150, '150', 'assets/images/chips/150.png', 200, [
    Color(0XFF141414),
    Color(0XFF16334E),
  ]),
  twoHundred(4, 200, '200', 'assets/images/chips/350.png', 250, [
    Color(0XFF141414),
    Color.fromARGB(255, 56, 132, 52),
  ]),
  threeHundredFifty(5, 350, '350', 'assets/images/chips/350.png', 400, [
    Color(0XFF141414),
    Color(0XFFF2CD5C),
  ]),
  fiveHundred(6, 500, '500', 'assets/images/chips/500.png', 550, [
    Color(0XFF141414),
    Color(0XFF133160),
  ]),
  thousand(7, 1000, '1000', 'assets/images/chips/500.png', 1050, [
    Color(0XFF141414),
    Color.fromARGB(255, 96, 19, 89),
  ]);

  final int chipId;
  final double chipAmount;
  final String chipsValue;
  final String image;
  final double chipPrice;
  final List<Color> gradientColor;

  const ChipCollection(
    this.chipId,
    this.chipAmount,
    this.chipsValue,
    this.image,
    this.chipPrice,
    this.gradientColor,
  );

  getGradient() {
    return LinearGradient(
      colors: gradientColor,
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }
}
