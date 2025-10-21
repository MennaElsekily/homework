import 'package:flutter/material.dart';
import 'package:session15/widgets/gender_section.dart';
import 'package:session15/widgets/height_section.dart';
import 'package:session15/widgets/number_card.dart';

void main() {
  runApp(const BMIAPP());
}

class BMIAPP extends StatelessWidget {
  const BMIAPP({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff000319),
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Color(0xff03031C),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                GenderSection(),
                SizedBox(height: 10),
                HeightSection(),
                SizedBox(height: 10),

                NumbersSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
