import 'package:flutter/material.dart';
import 'package:tekspogs/features/game/presentation/widgets/stack_spread_animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: StackSpreadAnimation()),
    );
  }
}
