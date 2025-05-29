import 'package:flutter/material.dart';
import 'package:tekspogs/features/game/arena/presentation/widgets/round_activity.dart';

class ArenaField extends StatelessWidget {
  const ArenaField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: roundActivity(context, 1000, 2900.0, 500)),
    );
  }
}
