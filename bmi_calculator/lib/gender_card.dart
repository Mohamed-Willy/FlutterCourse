import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'custom_card.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({super.key, required this.icon, required this.text, this.onPress, required this.color});
  final IconData icon;
  final String text;
  final Color color;
  final Function()? onPress;
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
            style: kLabelTextStyle
          ),
        ],
      ),
      onClick: onPress,
    );
  }
}
