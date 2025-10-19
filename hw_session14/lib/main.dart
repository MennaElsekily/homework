import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffFFF8FF),
        body: Column(
          children: [HeaderSection(), QuickStats(), Feautressection()],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 24,
            bottom: 12,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff8160B9),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 16,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Hello! 👋',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Try your best to build this ui',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  height: 44,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5A32B0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class QuickStats extends StatelessWidget {
  const QuickStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Quick Stats',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.white,
                shadowColor: Colors.black12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  child: _StatCol(
                    icon: Icons.people,
                    value: "1,234",
                    label: "Users",
                    iconColor: Color(0xff7A4DFF),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Card(
                color: Colors.white,
                shadowColor: Colors.black12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: _StatCol(
                    icon: Icons.star,
                    value: "4.8",
                    label: "Rating",
                    iconColor: Color(0xffFF9A03),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Card(
                color: Colors.white,
                shadowColor: Colors.black12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: _StatCol(
                    icon: Icons.show_chart,
                    value: "98%",
                    label: "Success",
                    iconColor: Color(0xff007AFF),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatCol extends StatelessWidget {
  final IconData icon;
  final String value, label;
  final Color iconColor;
  const _StatCol({
    required this.icon,
    required this.value,
    required this.label,
    required this.iconColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: iconColor, size: 28),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 14)),
      ],
    );
  }
}

class Feautressection extends StatelessWidget {
  const Feautressection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Features",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),

          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 6,
                ), // was 8
                leading: const _IconBox(
                  color: Color(0xFFF0E6FF),
                  icon: Icons.speed,
                  iconColor: Color(0xFF6E40C9),
                ),
                title: const Text(
                  "Fast Performance",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: const Text("Lightning fast app performance"),
                trailing: const Icon(
                  Icons.chevron_right,
                  color: Colors.black38,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),

          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(vertical: 6),
                leading: const _IconBox(
                  color: Color(0xFFE7F2FF),
                  icon: Icons.shield_outlined,
                  iconColor: Color(0xFF3B7EFF),
                ),
                title: const Text(
                  "Secure",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: const Text("Your data is safe with us"),
                trailing: const Icon(
                  Icons.chevron_right,
                  color: Colors.black38,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),

          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(vertical: 6),
                leading: const _IconBox(
                  color: Color(0xFFFFF2E4),
                  icon: Icons.palette_rounded,
                  iconColor: Color(0xFFFF9800),
                ),

                title: const Text(
                  "Beautiful UI",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: const Text("Modern and clean design"),
                trailing: const Icon(
                  Icons.chevron_right,
                  color: Colors.black38,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _IconBox extends StatelessWidget {
  final Color color;
  final Color iconColor;
  final IconData icon;
  const _IconBox({
    required this.color,
    required this.icon,
    required this.iconColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: iconColor, size: 24),
    );
  }
}
