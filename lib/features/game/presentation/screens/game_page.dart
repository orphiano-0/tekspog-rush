import 'package:flutter/material.dart';
import 'package:tekspogs/features/game/presentation/widgets/flip_button.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/pogs/pog_bayanihan.png',
                  height: 100,
                ),
                const SizedBox(width: 10),
                Image.asset('assets/images/pogs/pog_jeep.png', height: 100),
                const SizedBox(width: 10),
                Image.asset('assets/images/pogs/pog_mask.png', height: 100),
              ],
            ),
            const SizedBox(height: 20),
            // ElevatedButton(onPressed: () {}, child: Text('Click Here!')),
            FlipButton(
              onPressed: () {
                print('Tinira na ya!');
              },
              text: 'Tira mo na, ya!',
            ),
          ],
        ),
      ),
    );
  }
}
