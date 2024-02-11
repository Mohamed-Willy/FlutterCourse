import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, this.cardChild = const Text(""), this.color = activeCardColor});
  final Color color;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
