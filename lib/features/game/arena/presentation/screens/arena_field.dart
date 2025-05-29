import 'package:flutter/material.dart';
import 'package:tekspogs/features/game/arena/presentation/widgets/round_activity.dart';

class ArenaField extends StatelessWidget {
  const ArenaField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RoundActivity(betAmount: 5000, userBalance: 23, totalBet: 400),
      ),
    );
  }
}
