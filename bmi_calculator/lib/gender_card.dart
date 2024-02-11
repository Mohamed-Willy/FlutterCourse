import 'package:flutter/material.dart';
import 'custom_card.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({super.key, required this.icon, required this.text, this.color = inActiveCardColor});
  final IconData icon;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: color,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80.0,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              color: Color(0xFF8D8E98),
            ),
          ),
        ],
      ),
    );
  }
}
