import 'package:bmi_calculator/gender_card.dart';
import 'custom_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender{
  female,
  male
}

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});
  final String title;
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;

  void updateColor(Gender gender){
      if(gender == Gender.male){
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      }
      else{
        maleCardColor = inActiveCardColor;
        femaleCardColor = activeCardColor;
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: GenderCard(
                      icon: FontAwesomeIcons.mars,
                      text: "Male",
                      color: maleCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: GenderCard(
                      icon: FontAwesomeIcons.venus,
                      text: "Female",
                      color: femaleCardColor,
                    ),
                  ),
                ),
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
