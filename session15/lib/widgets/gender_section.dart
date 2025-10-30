import 'package:flutter/material.dart';
import 'package:session15/models/bmi_input_model.dart';
import 'package:session15/widgets/gender_card_content.dart';

class GenderSection extends StatefulWidget {
  const GenderSection({super.key, required this.bmiInputModel});

  final BMIInputModel bmiInputModel;
  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
  bool isMaleSelected = true;
  Color activeColor = Color(0xff060924);
  Color inactiveColor = Color(0xff15152F);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              isMaleSelected = true;
              widget.bmiInputModel.gender = 'Male';
              setState(() {});
            },
            child: GenderCardContent(
              icon: Icons.male_sharp,
              label: 'MALE',
              color: isMaleSelected ? activeColor : inactiveColor,
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: GestureDetector(
            onTap: () {
              isMaleSelected = false;
              widget.bmiInputModel.gender = 'Female';

              setState(() {});
            },
            child: GenderCardContent(
              icon: Icons.female_sharp,
              label: 'FEMALE',
              color: !isMaleSelected ? activeColor : inactiveColor,
            ),
          ),
        ),
      ],
    );
  }
}
