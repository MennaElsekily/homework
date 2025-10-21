import 'package:flutter/material.dart';

class GenderCardContent extends StatelessWidget {
  const GenderCardContent({super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.white, size: 90),
        // const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFFBFC4E2),
            fontWeight: FontWeight.bold,
            fontSize: 20,
            // letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
