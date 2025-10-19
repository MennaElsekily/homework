import 'package:flutter/material.dart';
import 'package:hw_session14/widgets/ButtomSection.dart';
import 'package:hw_session14/widgets/FeaturesSection.dart';
import 'package:hw_session14/widgets/HelloSection.dart';
import 'package:hw_session14/widgets/QuickStats.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            HeaderSection(),
            QuickStats(),
            FeautresSection(),
            BottomSection(),
          ],
        ),
      ),
    );
  }
}
