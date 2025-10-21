import 'package:flutter/material.dart';
import 'package:session15/widgets/custom_card.dart';

class NumberCardContent extends StatelessWidget {
  const NumberCardContent({
    super.key,
    required this.label,
    this.age,
    this.weight,
    required this.child,
  });

  final String label;
  final int? age;
  final int? weight;
  final Widget child;

  static const _labelColor = Color(0xFF7F849C);

  @override
  Widget build(BuildContext context) {
    final int? value = label.toLowerCase() == 'age' ? age : weight;

    return CustomCard(
      color: const Color(0xFF1B1E36),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label.toUpperCase(),
            style: const TextStyle(
              color: _labelColor,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            value != null ? '$value' : '—',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 52,
              height: 1.0,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
