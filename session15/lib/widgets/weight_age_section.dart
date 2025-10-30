import 'package:flutter/material.dart';
import 'package:session15/models/bmi_input_model.dart';
import 'package:session15/widgets/number_card.dart';

class WeightAgeSection extends StatelessWidget {
  const WeightAgeSection({super.key, required this.bmiInputModel});
  final BMIInputModel bmiInputModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: NumberCard(
            label: 'WEIGHT',
            defaultValue: 70,
            onChanged: (value) {
              bmiInputModel.weight = value;
            },
          ),
        ),

        const SizedBox(width: 32),
        Expanded(
          child: NumberCard(
            label: 'AGE',
            defaultValue: 20,
            onChanged: (value) {
              bmiInputModel.age = value;
            },
          ),
        ),
      ],
    );
  }
}
