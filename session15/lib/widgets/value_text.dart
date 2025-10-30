import 'package:flutter/material.dart';

class ValueText extends StatelessWidget {
  const ValueText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
