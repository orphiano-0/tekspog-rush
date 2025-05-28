import 'package:flutter/material.dart';
import 'package:tekspogs/features/game/presentation/widgets/betting_dialog.dart';

class TestButton extends StatelessWidget {
  const TestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible:
                  false, // Optional: prevent closing on outside tap
              builder: (context) => const BettingDialog(),
            );
          },
          child: const Text('Open Game Dialog'),
        ),
      ),
    );
  }
}
