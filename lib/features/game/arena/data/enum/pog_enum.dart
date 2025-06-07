enum PogEnum {
  unknown(0, 'assets/images/pogs/unknown_pog.png', 'Unknown'),
  bayanihan(1, 'assets/images/pogs/bayanihan_pog.png', 'Bayanihan'),
  festival(2, 'assets/images/pogs/festival_pog.png', 'Festival'),
  jeep(3, 'assets/images/pogs/jeep_pog.png', 'Jeepney'),
  tikbalang(4, 'assets/images/pogs/tikbalang_pog.png', 'Tikbalang'),
  rizal(5, 'assets/images/pogs/rizal_pog.png', 'Rizal'),
  tarsier(6, 'assets/images/pogs/tarsier_pog.png', 'Tarsier');

  final int pogId;
  final String pogPath;
  final String pogName;

  const PogEnum(this.pogId, this.pogPath, this.pogName);
}
