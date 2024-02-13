import 'package:bmi_calculator/gender_card.dart';
import 'constants.dart';
import 'custom_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  female,
  male,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});
  final String title;
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  Gender? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("BMI CALCULATOR")),
        elevation: 1,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                GenderCard(
                  icon: FontAwesomeIcons.mars,
                  text: "Male",
                  color: gender == Gender.male
                      ? kActiveCardColor
                      : kInActiveCardColor,
                  onPress: () {
                    setState(() {
                      gender = Gender.male;
                    });
                  },
                ),
                GenderCard(
                  icon: FontAwesomeIcons.venus,
                  text: "Female",
                  color: gender == Gender.female
                      ? kActiveCardColor
                      : kInActiveCardColor,
                  onPress: () {
                    setState(() {
                      gender = Gender.female;
                    });
                  },
                ),
              ],
            ),
          ),
          CustomCard(
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "HEIGHT",
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberTextStyle,
                    ),
                    const Text(
                      "cm",
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 30),
                    thumbColor: const Color(0xFFeb1555),
                    overlayColor: const Color(0x29eb1555),
                    activeTrackColor: const Color(0xFF3F3F66),
                  ),
                  child: Slider(
                    min: 30,
                    max: 250,
                    inactiveColor: const Color(0xFF8D8E98),
                    value: height.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
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
            height: 60.0,
          ),
        ],
      ),
    );
  }
}
