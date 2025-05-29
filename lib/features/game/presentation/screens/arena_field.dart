import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            icon: Icon(Icons.home, color: Colors.black),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 390,
          height: 260,
          decoration: BoxDecoration(),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/bet_dialog/bet_frame.png',
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/pogs/bayanihan_pog.png',
                    width: 100,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/images/pogs/tikbalang_pog.png',
                    width: 100,
                  ),
                  const SizedBox(width: 10),
                  Image.asset('assets/images/pogs/tarsier_pog.png', width: 100),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
