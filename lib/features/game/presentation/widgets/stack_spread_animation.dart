// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:math' as math;

// class StackSpreadAnimation extends StatefulWidget {
//   const StackSpreadAnimation({super.key});

//   @override
//   State<StackSpreadAnimation> createState() => _StackSpreadAnimationState();
// }

// class _StackSpreadAnimationState extends State<StackSpreadAnimation>
//     with SingleTickerProviderStateMixin {
//   late AnimationController controller;
//   late List<Animation<Offset>> positionAnimations;
//   late List<Animation<double>> rotationAnimations;
//   late Timer _timer;
//   int _countdownSeconds = 10;
//   bool _isSpread = false;

//   @override
//   void initState() {
//     super.initState();
//     // Initialize AnimationController with 500ms duration
//     controller = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: 500),
//     );

//     // Define position animations for three images
//     positionAnimations = [
//       Tween<Offset>(
//         begin: Offset(10, 0),
//         end: Offset(20, 0),
//       ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut)),
//       Tween<Offset>(
//         begin: Offset(30, 0),
//         end: Offset(140, 0),
//       ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut)),
//       Tween<Offset>(
//         begin: Offset(50, 0),
//         end: Offset(260, 0),
//       ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut)),
//     ];

//     // Define rotation animations (0 to π radians for a full flip)
//     rotationAnimations = List.generate(
//       3,
//       (index) => Tween<double>(
//         begin: 0,
//         end: math.pi,
//       ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut)),
//     );

//     // Start the timer loop
//     _startTimer();
//   }

//   void _startTimer() {
//     _countdownSeconds = 10;
//     _isSpread = false;
//     setState(() {}); // Update UI to show initial countdown
//     _timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       setState(() {
//         _countdownSeconds--;
//         if (_countdownSeconds <= 0) {
//           if (!_isSpread) {
//             // Spread and flip
//             controller.forward();
//             _isSpread = true;
//             _countdownSeconds = 3; // Wait 3 seconds in spread state
//           } else {
//             // Stack and flip back
//             controller.reverse();
//             _isSpread = false;
//             _countdownSeconds = 10; // Reset to 5 seconds for next cycle
//           }
//         }
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _timer.cancel();
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         SizedBox(
//           height: 200,
//           child: Stack(
//             children: List.generate(3, (index) {
//               return AnimatedBuilder(
//                 animation: controller,
//                 builder: (context, child) {
//                   final isFrontVisible =
//                       rotationAnimations[index].value <= math.pi / 2;
//                   return Positioned(
//                     left: positionAnimations[index].value.dx,
//                     top: 50,
//                     child: Transform(
//                       transform:
//                           Matrix4.identity()
//                             ..setEntry(3, 2, 0.001)
//                             ..rotateY(rotationAnimations[index].value),
//                       alignment: Alignment.center,
//                       child:
//                           isFrontVisible
//                               ? buildImage(index)
//                               : Transform(
//                                 transform: Matrix4.identity()..rotateY(math.pi),
//                                 alignment: Alignment.center,
//                                 child: buildImage(index, isBack: true),
//                               ),
//                     ),
//                   );
//                 },
//               );
//             }),
//           ),
//         ),
//         SizedBox(height: 20),
//         Text(
//           'Next ${_isSpread ? "stack" : "spread"} in $_countdownSeconds seconds',
//           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }

//   Widget buildImage(int index, {bool isBack = false}) {
//     final imagePath = [
//       'assets/images/pogs/pog_jeep.png',
//       'assets/images/pogs/pog_tikbalang.png',
//       'assets/images/pogs/pog_mask.png',
//     ];
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(10),
//       child: SizedBox(
//         width: 100,
//         height: 100,
//         child: Image.asset(
//           isBack ? imagePath[index] : 'assets/images/pogs/back.png',
//           width: 100,
//           height: 100,
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }
