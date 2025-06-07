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
    with TickerProviderStateMixin {
  final int _pogCount = 3;

  late List<bool> _isSelected;

  late List<AnimationController> _scaleControllers;
  late List<Animation<double>> _scaleAnimations;

  final List<String> _pogImages = [
    'assets/images/pogs/bayanihan_pog.png',
    'assets/images/pogs/tarsier_pog.png',
    'assets/images/pogs/jeep_pog.png',
  ];

  @override
  void initState() {
    super.initState();

    _isSelected = List<bool>.filled(_pogCount, false);

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
  void dispose() {
    for (var controller in _scaleControllers) {
      controller.dispose();
    }

    super.dispose();
  }

  Widget _buildPog(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          for (int i = 0; i < _pogCount; i++) {
            _isSelected[i] = i == index;
            if (_isSelected[i]) {
              _scaleControllers[i].forward(from: 0.0);
            } else {
              _scaleControllers[i].reset();
            }
          }
        });
      },
      child: ScaleTransition(
        scale: _scaleAnimations[index],
        child: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border:
                _isSelected[index]
                    ? Border.all(color: Colors.black, width: 1)
                    : null,
          ),
          child: Image.asset(
            _pogImages[index],
            height: _isSelected[index] ? 28 : 25,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.13,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1),
      ),
      child: Column(
        children: [
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(_pogCount, _buildPog),
          ),
          const SizedBox(height: 5),
          Text(
            'Total Bet: ₱${widget.totalBet.toStringAsFixed(2)}',
            style: const TextStyle(
              fontFamily: 'Geologica',
              fontWeight: FontWeight.bold,
              fontSize: 8,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'User Balance: ₱${widget.userBalance.toStringAsFixed(2)}',
            style: const TextStyle(fontFamily: 'Geologica', fontSize: 8),
          ),
        ],
      ),
    );
  }
}
