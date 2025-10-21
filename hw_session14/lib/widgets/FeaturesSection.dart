import 'package:flutter/material.dart';

class FeautresSection extends StatelessWidget {
  const FeautresSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Features",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 5),
          _FeatureCard(
            iconBg: Color(0xFFF0E6FF),
            icon: Icons.speed,
            iconColor: Color(0xFF6E40C9),
            title: "Fast Performance",
            subtitle: "Lightning fast app performance",
          ),
          SizedBox(height: 5),
          _FeatureCard(
            iconBg: Color(0xFFE7F2FF),
            icon: Icons.shield_rounded,
            iconColor: Color(0xFF007BFF),
            title: "Secure",
            subtitle: "Your data is safe with us",
          ),
          SizedBox(height: 5),
          _FeatureCard(
            iconBg: Color(0xFFFFF2E4),
            icon: Icons.palette_rounded,
            iconColor: Color(0xFFFF9800),
            title: "Beautiful UI",
            subtitle: "Modern and clean design",
          ),
        ],
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final Color iconBg;
  final Color iconColor;
  final IconData icon;
  final String title;
  final String subtitle;

  const _FeatureCard({
    required this.iconBg,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: ListTile(
          dense: true,
          visualDensity: const VisualDensity(horizontal: 0, vertical: -3),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 6,
          ),
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: iconColor, size: 22),
          ),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          subtitle: Text(subtitle, style: const TextStyle(fontSize: 13)),
          trailing: const Icon(
            Icons.chevron_right,
            color: Colors.black38,
            size: 20,
          ),
        ),
      ),
    );
  }
}
