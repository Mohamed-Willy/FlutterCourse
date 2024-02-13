import 'package:flutter/material.dart';
import 'constants.dart';


class CustomCard extends StatelessWidget {
  const CustomCard({
  super.key,
  this.cardChild = const Text(""),
  this.color = kActiveCardColor,
  this.onClick,
  });
  final Color color;
  final Widget cardChild;
  final Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onClick,
        child: Container(
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: cardChild,
          ),
        ),
      ),
    );
  }
}
