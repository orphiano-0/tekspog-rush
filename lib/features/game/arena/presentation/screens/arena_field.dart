import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tekspogs/features/game/arena/presentation/widgets/round_activity.dart';

class ArenaField extends StatelessWidget {
  const ArenaField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.go('/');
            },
            icon: Icon(Icons.home_outlined),
          ),
        ],
      ),
      body: Center(
        child: RoundActivity(betAmount: 5000, userBalance: 23, totalBet: 400),
      ),
    );
  }
}
