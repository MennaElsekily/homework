import 'package:flutter/material.dart';
import 'package:session15/widgets/section_title.dart';

class GenderCardContent extends StatelessWidget {
  const GenderCardContent({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });
  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 90),
          SectionTitle(label: label),
        ],
      ),
    );
  }
}
