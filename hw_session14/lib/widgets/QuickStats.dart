import 'package:flutter/material.dart';
import 'package:hw_session14/widgets/QuickStatItem.dart';

class QuickStats extends StatelessWidget {
  const QuickStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
              Quickstatitem(
                icon: Icons.people,
                iconColor: Color(0xFF7A4DFF),
                value: "1,234",
                label: "Users",
              ),
              Quickstatitem(
                icon: Icons.star,
                iconColor: Color(0xFFFFA000),
                value: "4.8",
                label: "Rating",
              ),
              Quickstatitem(
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
