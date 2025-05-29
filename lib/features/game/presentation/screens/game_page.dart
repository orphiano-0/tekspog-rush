// import 'package:flutter/material.dart';
// import 'package:tekspogs/features/game/presentation/widgets/flip_button.dart';
// import 'dart:math' show Random;

// class GamePage extends StatefulWidget {
//   const GamePage({super.key});

//   @override
//   State<GamePage> createState() => _GamePageState();
// }

// class _GamePageState extends State<GamePage> with TickerProviderStateMixin {
//   final int _pogCount = 3;
//   final Random _random = Random();

//   late List<bool> _isFront;

//   late List<bool> _isSelected;

//   late List<AnimationController> _spinControllers;
//   late List<Animation<double>> _spinAnimations;

//   late List<AnimationController> _scaleControllers;
//   late List<Animation<double>> _scaleAnimations;

//   late AnimationController _stackController;
//   late List<Animation<double>> _stackAnimations;
//   late List<Animation<double>> _bounceAnimations;

//   // Stack state
//   bool _isStacked = false;

//   final List<String> _frontImages = [
//     'assets/images/pogs/pog_bayanihan.png',
//     'assets/images/pogs/pog_jeep.png',
//     'assets/images/pogs/pog_mask.png',
//   ];

//   @override
//   void initState() {
//     super.initState();

//     _isFront = List<bool>.filled(_pogCount, true);
//     _isSelected = List<bool>.filled(_pogCount, false);

//     _spinControllers = List.generate(_pogCount, (_) {
//       return AnimationController(
//         duration: const Duration(milliseconds: 1200),
//         vsync: this,
//       );
//     });

//     _spinAnimations =
//         _spinControllers.map((controller) {
//           return Tween<double>(begin: 0, end: 4 * 3.14159).animate(
//             CurvedAnimation(parent: controller, curve: Curves.easeInOutBack),
//           );
//         }).toList();

//     _scaleControllers = List.generate(_pogCount, (_) {
//       return AnimationController(
//         duration: const Duration(milliseconds: 600),
//         vsync: this,
//       );
//     });

//     _scaleAnimations =
//         _scaleControllers.map((controller) {
//           return Tween<double>(begin: 1.0, end: 1.1).animate(
//             CurvedAnimation(parent: controller, curve: Curves.easeInOut),
//           );
//         }).toList();

//     _stackController = AnimationController(
//       duration: const Duration(milliseconds: 800),
//       vsync: this,
//     );

//     _stackAnimations = List.generate(_pogCount, (index) {
//       final offset = (index - 1) * 110.0;
//       return Tween<double>(begin: offset, end: 0.0).animate(
//         CurvedAnimation(
//           parent: _stackController,
//           curve: Interval(index * 0.1, 1.0, curve: Curves.easeInOutCubic),
//         ),
//       );
//     });

//     _bounceAnimations = List.generate(_pogCount, (index) {
//       return Tween<double>(begin: 0.0, end: 10.0).animate(
//         CurvedAnimation(
//           parent: _stackController,
//           curve: Interval(0.8, 1.0, curve: Curves.bounceOut),
//         ),
//       );
//     });
//   }

//   @override
//   void dispose() {
//     for (var controller in _spinControllers) {
//       controller.dispose();
//     }
//     for (var controller in _scaleControllers) {
//       controller.dispose();
//     }
//     _stackController.dispose();
//     super.dispose();
//   }

//   void _spinPog(int index) {
//     setState(() {
//       for (int i = 0; i < _pogCount; i++) {
//         _isSelected[i] = (i == index);
//         if (i == index) _isFront[i] = true;
//       }
//     });

//     _spinControllers[index].forward(from: 0).then((_) {
//       _spinControllers[index].reset();
//     });
//     _scaleControllers[index].repeat(
//       reverse: true,
//       period: const Duration(milliseconds: 600),
//     );
//     for (int i = 0; i < _pogCount; i++) {
//       if (i != index) _scaleControllers[i].stop();
//     }
//   }

//   Future<void> _randomlyFlipPogs() async {
//     setState(() {
//       _isStacked = true;
//       _isSelected = List<bool>.filled(_pogCount, false);
//       for (var controller in _scaleControllers) {
//         controller.stop(); // Stop scaling during flip
//       }
//     });

//     await _stackController.forward(from: 0);

//     final spinRotations = List.generate(
//       _pogCount,
//       (_) => 2 + _random.nextDouble() * 2,
//     );
//     for (int i = 0; i < _pogCount; i++) {
//       _spinAnimations[i] = Tween<double>(
//         begin: 0,
//         end: spinRotations[i] * 3.14159,
//       ).animate(
//         CurvedAnimation(
//           parent: _spinControllers[i],
//           curve: Curves.easeInOutBack,
//         ),
//       );
//     }

//     for (var controller in _spinControllers) {
//       controller.forward(from: 0);
//     }

//     setState(() {
//       _isStacked = false;
//       _isFront = List.generate(_pogCount, (_) => _random.nextBool());
//     });

//     await Future.wait([
//       for (int i = 0; i < _pogCount; i++)
//         _spinControllers[i]
//             .forward(from: 0)
//             .then((_) => _spinControllers[i].reset()),
//       _stackController.reverse().then((_) => _stackController.reset()),
//     ]);
//   }

//   Widget _buildPog(int index) {
//     return AnimatedBuilder(
//       animation: Listenable.merge([
//         _stackAnimations[index],
//         _bounceAnimations[index],
//         _scaleAnimations[index],
//       ]),
//       builder: (context, child) {
//         final screenWidth = MediaQuery.of(context).size.width;
//         final pogWidth = _isSelected[index] ? 105.0 : 100.0;
//         final centerOffset = (screenWidth - pogWidth) / 2;

//         return Positioned(
//           left:
//               _isStacked
//                   ? centerOffset
//                   : centerOffset + _stackAnimations[index].value,
//           top:
//               _isStacked
//                   ? (250 - (_isSelected[index] ? 90 : 86)) / 2
//                   : (250 - (_isSelected[index] ? 90 : 86)) / 2 +
//                       _bounceAnimations[index].value,
//           child: GestureDetector(
//             onTap: () => _spinPog(index),
//             child: AnimatedBuilder(
//               animation: _spinAnimations[index],
//               builder: (context, child) {
//                 return Transform(
//                   transform:
//                       Matrix4.identity()
//                         ..rotateY(_spinAnimations[index].value)
//                         ..scale(
//                           _scaleAnimations[index].value,
//                         ), // Scale for selection
//                   alignment: Alignment.center,
//                   child: AnimatedContainer(
//                     duration: const Duration(milliseconds: 300),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(100),
//                       border:
//                           _isSelected[index]
//                               ? Border.all(color: Colors.blue, width: 2)
//                               : null,
//                       boxShadow:
//                           _isSelected[index]
//                               ? [
//                                 BoxShadow(
//                                   color: Colors.blue.withOpacity(0.5),
//                                   spreadRadius: 3,
//                                   blurRadius: 10,
//                                   offset: const Offset(0, 2),
//                                 ),
//                               ]
//                               : [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.2),
//                                   spreadRadius: 1,
//                                   blurRadius: 5,
//                                 ),
//                               ],
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(100),
//                       child: Image.asset(
//                         _isFront[index]
//                             ? _frontImages[index]
//                             : 'assets/images/pogs/back.png',
//                         height: _isSelected[index] ? 85 : 85,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       insetPadding: const EdgeInsets.all(20),
//       backgroundColor: Colors.transparent,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   spreadRadius: 2,
//                   blurRadius: 10,
//                 ),
//               ],
//               image: const DecorationImage(
//                 image: AssetImage('assets/bet_dialog/bet_frame.png'),
//               ),
//             ),
//             height: 250,
//             child: Stack(
//               alignment: Alignment.center,
//               children: List.generate(_pogCount, (index) {
//                 return _buildPog(index);
//               }),
//             ),
//           ),
//           const SizedBox(height: 20),
//           FlipButton(
//             onPressed: () {
//               _randomlyFlipPogs();
//             },
//             text: 'Tira mo na, ya!',
//           ),
//         ],
//       ),
//     );
//   }
// }
