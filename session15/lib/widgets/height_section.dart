import 'package:flutter/material.dart';
import 'package:session15/widgets/custom_card.dart';

class HeightSection extends StatefulWidget {
  const HeightSection({super.key});

  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  double _height = 174; // initial value

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: CustomCard(
        height: 170,
        color: const Color(0xff15152F),
        child: Column(
          children: [
            const Text(
              "Height",
              style: TextStyle(color: Color(0xFF656776), fontSize: 25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  _height.toStringAsFixed(0),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    height: 1.0,
                  ),
                ),
                const SizedBox(width: 6),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    "cm",
                    style: TextStyle(
                      color: Color(0xFF656776),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 3,
                inactiveTrackColor: const Color(0xFF4B4F73),
                activeTrackColor: const Color(0xFFFF2D6C),
                thumbColor: const Color(0xFFFF2D6C),
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10),
                overlayShape: SliderComponentShape.noOverlay,
              ),
              child: Slider(
                min: 120,
                max: 220,
                value: _height,
                onChanged: (value) {
                  setState(() {
                    _height = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
