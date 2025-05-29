import 'package:flutter/material.dart';

class RoundActivity extends StatefulWidget {
  final double betAmount;
  final double userBalance;
  final double totalBet;

  const RoundActivity({
    super.key,
    required this.betAmount,
    required this.userBalance,
    required this.totalBet,
  });

  @override
  State<RoundActivity> createState() => _RoundActivityState();
}

class _RoundActivityState extends State<RoundActivity>
    with SingleTickerProviderStateMixin {
  final int _pogCount = 3;

  late List<bool> _isSelected;

  late AnimationController _controller;

  late List<Animation<double>> _bounceAnimations;

  late List<AnimationController> _scaleControllers;
  late List<Animation<double>> _scaleAnimations;

  @override
  void initState() {
    super.initState();

    _isSelected = List<bool>.filled(_pogCount, false);

    _bounceAnimations = List.generate(_pogCount, (index) {
      return Tween<double>(begin: 0.0, end: 10.0).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(0.8, 1.0, curve: Curves.bounceOut),
        ),
      );
    });

    _scaleControllers = List.generate(_pogCount, (_) {
      return AnimationController(
        duration: const Duration(microseconds: 600),
        vsync: this,
      );
    });

    _scaleAnimations =
        _scaleControllers.map((controller) {
          return Tween<double>(begin: 1.0, end: 1.1).animate(
            CurvedAnimation(parent: controller, curve: Curves.bounceOut),
          );
        }).toList();
  }

  @override
  void dispose() {}

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Widget roundActivity(
  BuildContext context,
  double betAmount,
  double userBalance,
  double totalBet,
) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.85,
    height: MediaQuery.of(context).size.height * 0.25,
    padding: const EdgeInsets.all(16),
    margin: const EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      // color: Colors.transparent,
      gradient: const LinearGradient(
        colors: [Color(0xFF3C1053), Color(0xFFAD5389)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      // boxShadow: [
      //   BoxShadow(
      //     color: const Color.fromARGB(255, 121, 121, 121).withOpacity(0.2),
      //     blurRadius: 8,
      //     offset: const Offset(0, 4),
      //   ),
      // ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/pogs/bayanihan_pog.png', height: 80),
              const SizedBox(width: 20),
              Image.asset('assets/images/pogs/tarsier_pog.png', height: 80),
              const SizedBox(width: 20),
              Image.asset('assets/images/pogs/jeep_pog.png', height: 80),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // Text(
        //   'Bet Amount: ₱${betAmount.toStringAsFixed(2)}',
        //   style: const TextStyle(
        //     fontFamily: 'Geologica',
        //     fontWeight: FontWeight.bold,
        //     fontSize: 14,
        //     color: Colors.white,
        //   ),
        // ),
        Text(
          'Total Bet: ₱${totalBet.toStringAsFixed(2)}',
          style: const TextStyle(
            fontFamily: 'Geologica',
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Divider(color: Colors.white, thickness: .5),
        const SizedBox(height: 8),
        Text(
          'User Balance: ₱${userBalance.toStringAsFixed(2)}',
          style: const TextStyle(
            fontFamily: 'Geologica',
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
