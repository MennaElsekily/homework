import 'package:flutter/material.dart';
import 'package:session15/widgets/number_card_content.dart';

class NumbersSection extends StatefulWidget {
  const NumbersSection({super.key});

  @override
  State<NumbersSection> createState() => _NumbersSectionState();
}

class _NumbersSectionState extends State<NumbersSection> {
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ---------- WEIGHT ----------
        Expanded(
          child: NumberCardContent(
            label: 'WEIGHT',
            weight: weight,
            age: age,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _circleButton('−', () {
                  setState(() => weight = (weight - 1).clamp(0, 300));
                }),
                _circleButton('+', () {
                  setState(() => weight = (weight + 1).clamp(0, 300));
                }),
              ],
            ),
          ),
        ),

        const SizedBox(width: 16),

        // ---------- AGE ----------
        Expanded(
          child: NumberCardContent(
            label: 'AGE',
            weight: weight,
            age: age,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _circleButton('−', () {
                  setState(() => age = (age - 1).clamp(0, 120));
                }),
                _circleButton('+', () {
                  setState(() => age = (age + 1).clamp(0, 120));
                }),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _circleButton(String label, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        minimumSize: const Size(56, 56),
        padding: EdgeInsets.zero,
        backgroundColor: const Color(0xFF4A4E5F),
        foregroundColor: Colors.white,
        elevation: 8,
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
      ),
    );
  }
}
