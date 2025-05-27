import 'package:flutter/material.dart';
import 'dart:math' as math;

class PogAnimation extends StatefulWidget {
  const PogAnimation({super.key});

  @override
  State<PogAnimation> createState() => _PogAnimationState();
}

class _PogAnimationState extends State<PogAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isFront = true;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animation = Tween<double>(
      begin: 0,
      end: math.pi,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _flipCard() {
    if (_controller.isAnimating) return;
    setState(() {
      _isFront = !_isFront;
    });
    if (_isFront) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _flipCard,
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              // Determine which side to show based on rotation
              final isFrontVisible = _animation.value <= math.pi / 2;
              return Transform(
                transform:
                    Matrix4.identity()
                      ..setEntry(3, 2, 0.001) // Perspective for 3D effect
                      ..rotateY(_animation.value),
                alignment: Alignment.center,
                child:
                    isFrontVisible
                        ? //_buildCardSide(Colors.blue, 'Front')
                        Container(
                          // decoration: BoxDecoration(
                          //   gradient: LinearGradient(
                          //     colors: [Color(0XFFF2CD5C), Color(0XFFF2921D)],
                          //   ),
                          //   borderRadius: BorderRadius.circular(5),
                          //   border: Border.all(width: 2, color: Colors.black),
                          // ),
                          child: Image.asset(
                            'assets/images/pogs/pog_jeep.png',
                            height: 200,
                            width: 200,
                          ),
                        )
                        : Transform(
                          transform: Matrix4.identity()..rotateY(math.pi),
                          alignment: Alignment.center,
                          child: Container(
                            // decoration: BoxDecoration(
                            //   gradient: LinearGradient(
                            //     colors: [Color(0XFFF2CD5C), Color(0XFFF2921D)],
                            //   ),
                            //   borderRadius: BorderRadius.circular(5),
                            //   border: Border.all(width: 2, color: Colors.black),
                            // ),
                            child: Image.asset(
                              'assets/images/pogs/pog_tikbalang.png',
                              height: 200,
                              width: 200,
                            ),
                          ),
                        ),
              );
            },
          ),
        ),
      ),
    );
  }
}
