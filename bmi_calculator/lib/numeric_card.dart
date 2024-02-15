import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_card.dart';

class NumericCard extends StatelessWidget {
  const NumericCard(
      {super.key,
      required this.title,
      required this.value,
      this.onMinusPress,
      this.onPlusPress});
  final String title;
  final int value;
  final Function()? onMinusPress;
  final Function()? onPlusPress;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: kActiveCardColor,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: kLabelTextStyle,
          ),
          Text(
            value.toString(),
            style: kNumberTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedButton(
                onPress: onMinusPress,
                icon: FontAwesomeIcons.minus,
              ),
              const SizedBox(
                width: 10,
              ),
              RoundedButton(
                onPress: onPlusPress,
                icon: FontAwesomeIcons.plus,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key, this.onPress, required this.icon});
  final Function()? onPress;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 6.0,
      shape: const CircleBorder(),
      constraints: const BoxConstraints(minWidth: 50.0, minHeight: 50.0),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
