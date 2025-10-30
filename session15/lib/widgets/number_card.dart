import 'package:flutter/material.dart';
import 'package:session15/widgets/custom_card.dart';
import 'package:session15/widgets/section_title.dart';
import 'package:session15/widgets/value_text.dart';

class NumberCard extends StatefulWidget {
  const NumberCard({
    super.key,
    required this.label,
    required this.defaultValue,
    required this.onChanged,
  });

  final String label;

  final int defaultValue;
  final Function(int) onChanged;

  @override
  State<NumberCard> createState() => _NumberCardState();
}

class _NumberCardState extends State<NumberCard> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    if (value == 0) {
      value = widget.defaultValue;
    }
    return CustomCard(
      child: Column(
        children: [
          SectionTitle(label: widget.label),
          ValueText(text: value.toString()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                icon: Icons.add,
                onTap: () {
                  value++;
                  widget.onChanged(value);
                  setState(() {});
                },
              ),

              SizedBox(width: 16),

              CustomIconButton(
                icon: Icons.remove,
                onTap: () {
                  if (value > 0) value--;
                  widget.onChanged(value);

                  setState(() {});
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon, required this.onTap});
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Color(0xff4A4E5F),
        radius: 25,
        child: Icon(icon, color: Colors.white, size: 30),
      ),
    );
  }
}
