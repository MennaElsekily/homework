import 'package:flutter/material.dart';
import 'package:session15/models/bmi_input_model.dart';
import 'package:session15/widgets/custom_card.dart';
import 'package:session15/widgets/section_title.dart';
import 'package:session15/widgets/value_text.dart';

class HeightSection extends StatefulWidget {
  const HeightSection({super.key, required this.bmiInputModel});
  final BMIInputModel bmiInputModel;

  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  double height = 174;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SectionTitle(label: 'HEIGHT'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueText(text: height.round().toString()),
              const SizedBox(width: 6),
              Text(
                "cm",
                style: TextStyle(
                  color: Color(0xFF656776),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          SliderTheme(
            data: SliderThemeData(
              trackHeight: 0.5,
              inactiveTrackColor: const Color(0xFF4B4F73),
              activeTrackColor: Colors.white,
              thumbColor: const Color(0xFFFF2D6C),
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15),
              overlayShape: SliderComponentShape.noOverlay,
            ),
            child: Slider(
              min: 120,
              max: 220,
              value: height,
              onChanged: (value) {
                setState(() {
                  height = value;
                  widget.bmiInputModel.height = value / 100;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
