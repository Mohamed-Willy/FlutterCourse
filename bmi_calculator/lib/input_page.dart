import 'package:bmi_calculator/calculator_logic.dart';
import 'package:bmi_calculator/gender_card.dart';
import 'package:bmi_calculator/numeric_card.dart';
import 'bottom_button.dart';
import 'constants.dart';
import 'custom_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  female,
  male,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 185;
  int weight = 90;
  int age = 22;
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
          Expanded(
            child: Row(
              children: [
                NumericCard(
                  title: "WEIGHT",
                  value: weight,
                  onMinusPress: () {
                    setState(() {
                      weight--;
                    });
                  },
                  onPlusPress: () {
                    setState(() {
                      weight++;
                    });
                  },
                ),
                NumericCard(
                  title: "AGE",
                  value: age,
                  onMinusPress: () {
                    setState(() {
                      age--;
                    });
                  },
                  onPlusPress: () {
                    setState(() {
                      age++;
                    });
                  },
                ),
              ],
            ),
          ),
          BottomButton(
            title: "CALCULATE",
              onClick: () {
              CalculatorLogic bmi = CalculatorLogic(weight: weight, height: height);
              finalScore = bmi.calculateBMI();
              finalTitle = bmi.getResult().toUpperCase();
              finalTitleColor = (finalTitle == "NORMAL")? const Color(0xFF24D876): const Color(0xFFFF2222);
              finalDescription = bmi.getAdvise();
              Navigator.pushNamed(
                context,
                '/result',
              );
            }
          ),
        ],
      ),
    );
  }
}
