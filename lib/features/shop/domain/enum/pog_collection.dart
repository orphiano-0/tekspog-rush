import 'package:flutter/material.dart';

enum PogCollection {
  unknown(
    0,
    'assets/images/pogs/pog_bayanihan.png',
    'Unknown',
    'An unidentified pog.',
    [Color(0XFF000000), Color(0XFF333333)],
    0,
    'assets/images/pogs/rarity/rare.png',
  ),
  bayanihan(
    1,
    'assets/images/pogs/pog_bayanihan.png',
    'Bayanihan',
    'The Bayanihan Pog, with its vibrant aura, symbolized the spirit of unity and communal harmony. It was said that those who possessed it could rally communities to achieve the impossible, lifting spirits and even mountains through collective strength.',
    [Color(0XFF141414), Color(0XFF852A1C)],
    100,
    'assets/images/pogs/rarity/epic.png',
  ),
  jeep(
    2,
    'assets/images/pogs/pog_jeep.png',
    'Jeep',
    'The Jeep Pog, gleaming with the colors of travel and adventure, was a tribute to the iconic Filipino jeepney. Legends whispered that it granted its bearer the power to traverse not just the physical world, but also the streams of time, visiting moments where joy and resilience flourished.',
    [Color(0XFF141414), Color(0XFF16334E)],
    100,
    'assets/images/pogs/rarity/epic.png',
  ),
  mask(
    3,
    'assets/images/pogs/pog_mask.png',
    'Festival',
    'The Festival Pog, a dazzling artifact of festivals, radiated the energy of celebration and creativity. Inspired by the vibrant festivals of the Philippines, it was believed to bless its owner with the ability to spread happiness and beauty wherever they went.',
    [Color(0XFF141414), Color(0XFFF2CD5C)],
    50,
    'assets/images/pogs/rarity/rare.png',
  ),
  tikbalang(
    4,
    'assets/images/pogs/pog_tikbalang.png',
    'Tikbalang',
    'The Tikbalang Pog, cloaked in mystery, was tied to the legendary creature of Filipino folklore. With its ethereal gradient hues, it carried a wild, untamed power, allowing its bearer to navigate the realms of shadow and light, outsmarting even the trickiest of foes.',
    [Color(0XFF141414), Color(0XFF133160)],
    150,
    'assets/images/pogs/rarity/mythic.png',
  ),
  rizal(
    5,
    'assets/images/pogs/pog_rizal.png',
    'Jose Rizal',
    'The Visionary’s Legacy Forged in the heart of revolution, the Rizal Pog embodies the intellect, courage, and unwavering spirit of one of the greatest minds in Filipino history. Glowing with the hues of wisdom and resilience, it is said that those who wield it inherit the power of insight and eloquence, allowing them to sway minds and ignite change with mere words.',
    [Color(0XFF141414), Color.fromARGB(255, 96, 57, 19)],
    150,
    'assets/images/pogs/rarity/mythic.png',
  );

  final int id;
  final String image;
  final String name;
  final String pogLore;
  final List<Color> gradientColor;
  final double value;
  final String rarity;

  const PogCollection(
    this.id,
    this.image,
    this.name,
    this.pogLore,
    this.gradientColor,
    this.value,
    this.rarity,
  );

  getGradient() {
    return LinearGradient(
      colors: gradientColor,
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }

  static PogCollection fromId(int id) {
    return PogCollection.values.firstWhere(
      (pog) => pog.id == id,
      orElse: () => PogCollection.unknown,
    );
  }
}
