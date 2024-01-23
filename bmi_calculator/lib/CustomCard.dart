import 'package:flutter/material.dart';

const customCardColor = Color(0xFF1D1E33);

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, this.color = customCardColor});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
