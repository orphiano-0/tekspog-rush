import 'package:flutter/material.dart';
import 'package:tekspogs/features/game/presentation/widgets/wallet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TEKSPOG RUSH'), centerTitle: true),
      backgroundColor: Color.fromARGB(255, 89, 43, 122),
      body: Container(
        decoration: BoxDecoration(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildWalletBalanceContainer(context, '123-023-512'),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 30),
              alignment: Alignment.topLeft,
              child: Text(
                'Battle Mode',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
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
                    print('Arena game yan, ya!');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      'assets/images/game_mode/arena.png',
                      height: 200,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('Friendly game lang, ya!');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      'assets/images/game_mode/friendly.png',
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
