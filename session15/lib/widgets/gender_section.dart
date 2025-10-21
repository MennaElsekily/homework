import 'package:flutter/material.dart';
import 'package:session15/widgets/custom_card.dart';
import 'package:session15/widgets/gender_card_content.dart';

class GenderSection extends StatelessWidget {
  const GenderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: CustomCard(
            color: Color(0xff060924),
            height: 160,

            child: GenderCardContent(icon: Icons.male_sharp, label: 'MALE'),
          ),
        ),
        SizedBox(width: 30),
        Expanded(
          child: CustomCard(
            color: Color(0xff15152F),
            height: 160,

            child: GenderCardContent(icon: Icons.female_sharp, label: 'FEMALE'),
          ),
        ),
      ],
    );
  }
}
