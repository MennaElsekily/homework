import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF7FF),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            HeaderSection(),
            QuickStats(),
            Feautressection(),
            BottomButtons(),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 6),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF7C4DFF),
        ),
        padding: const EdgeInsets.fromLTRB(16, 14, 16, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello! 👋",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Try your best to build this ui",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              height: 38,
              decoration: BoxDecoration(
                color: const Color(0xFF6E40C9),
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuickStats extends StatelessWidget {
  const QuickStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Quick Stats",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              _StatCard(
                icon: Icons.people,
                iconColor: Color(0xFF7A4DFF),
                value: "1,234",
                label: "Users",
              ),
              _StatCard(
                icon: Icons.star,
                iconColor: Color(0xFFFFA000),
                value: "4.8",
                label: "Rating",
              ),
              _StatCard(
                icon: Icons.trending_up,
                iconColor: Color(0xFF007AFF),
                value: "98%",
                label: "Success",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String value;
  final String label;

  const _StatCard({
    required this.icon,
    required this.iconColor,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: iconColor, size: 24),
            const SizedBox(height: 6),
            Text(
              value,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              label,
              style: const TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}

class Feautressection extends StatelessWidget {
  const Feautressection({super.key});

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
          SizedBox(height: 8),
          _FeatureCard(
            iconBg: Colors.white,
            icon: Icons.speed,
            iconColor: Color(0xFF6E40C9),
            title: "Fast Performance",
            subtitle: "Lightning fast app performance",
          ),
          SizedBox(height: 6),
          _FeatureCard(
            iconBg: Color(0xFFE7F2FF),
            icon: Icons.shield_rounded,
            iconColor: Color(0xFF007BFF),
            title: "Secure",
            subtitle: "Your data is safe with us",
          ),
          SizedBox(height: 6),
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
  final Color backgroundColor = Colors.white;

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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: ListTile(
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

class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 4, bottom: 6),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 42,
              decoration: BoxDecoration(
                color: const Color(0xFF007BFF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Container(
              height: 42,
              decoration: BoxDecoration(
                color: const Color(0xFFFF9800),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
