import 'package:flutter/material.dart';
import 'package:session15/models/bmi_input_model.dart';
import 'package:session15/widgets/gender_section.dart';
import 'package:session15/widgets/height_section.dart';
import 'package:session15/widgets/home_app_bar.dart';
import 'package:session15/widgets/result_screen.dart';
import 'package:session15/widgets/weight_age_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BMIInputModel bmiInputModel = BMIInputModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000319),

      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: GenderSection(bmiInputModel: BMIInputModel()),
                    ),

                    Expanded(
                      child: HeightSection(bmiInputModel: BMIInputModel()),
                    ),

                    Expanded(
                      child: WeightAgeSection(bmiInputModel: BMIInputModel()),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF2D6C),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 26),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 4,
                ),
                onPressed: () {
                  double bmiResult = bmiInputModel.calculateBmi();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(bmiResult: bmiResult),
                    ),
                  );
                },
                child: Text(
                  "Calculate BMI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
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
