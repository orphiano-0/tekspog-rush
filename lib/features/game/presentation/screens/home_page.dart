import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tekspogs/features/game/presentation/widgets/wallet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('TEKSPOG RUSH'), centerTitle: true),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 60),
        decoration: BoxDecoration(
          color: Colors.black87,
          // gradient: LinearGradient(
          //   colors: [
          //     Color.fromARGB(255, 81, 19, 29),
          //     Color.fromARGB(255, 226, 101, 101),
          //   ],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   stops: [0.0, 1.0],
          // ),
        ),
        child: Column(
          children: [
            buildWalletBalanceContainer(context, '123-023-512'),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 30),
              alignment: Alignment.topLeft,
              child: Text(
                'Battle Mode',
                style: TextStyle(
                  fontFamily: 'Geologica',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    context.go('/arena');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Image.asset(
                      'assets/app/game_mode/arena_game.png',
                      height: 200,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // print('Friendly game lang, ya!');
                    context.go('/friendly');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Image.asset(
                      'assets/app/game_mode/friendly_game.png',
                      height: 200,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(left: 30),
              alignment: Alignment.topLeft,
              child: Text(
                'Limited Offers',
                style: TextStyle(
                  fontFamily: 'Geologica',
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
