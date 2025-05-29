import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FriendlyField extends StatelessWidget {
  const FriendlyField({super.key});

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
        child: SizedBox(
          child: Text(
            'Error 404: Something went wrong!',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontFamily: 'Geologica',
            ),
          ),
        ),
      ),
    );
  }
}
