import 'CustomCard.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});
  final String title;
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                CustomCard(),
                CustomCard(),
              ],
            ),
          ),
          const CustomCard(),
          const Expanded(
            child: Row(
              children: [
                CustomCard(),
                CustomCard(),
              ],
            ),
          ),
          Container(
            color: const Color(0xFFeb1555),
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80.0,
          )
        ],
      ),
    );
  }
}
