import 'package:flutter/material.dart';

class FlipButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const FlipButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 40,
        width: 150,
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0XFFF2CD5C), Color(0XFFF2921D)],
          ),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 2, color: Colors.black),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
