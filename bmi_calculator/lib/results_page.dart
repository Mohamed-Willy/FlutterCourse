import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/custom_card.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key, required this.title, required this.score, required this.description, required this.titleColor});
  final String title;
  final String score;
  final String description;
  final Color titleColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        elevation: 1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10, top: 30),
            child: Text(
              "Your Result",
              style: kLargeTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: CustomCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      title,
                      style: TextStyle(
                          color: titleColor,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold
                      ) ,
                    ),
                  ),
                  Text(
                    score,
                    style: kBMITextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      description,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              title: "RE-CALCULATE",
              onClick: () {
                Navigator.pop(context);
              }
          ),
        ],
      ),
    );
  }
}
