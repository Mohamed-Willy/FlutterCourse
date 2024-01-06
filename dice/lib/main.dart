import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[900],
        appBar: AppBar(
          title: const Text(
            "Dice",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.red[900],
          elevation: 3,
          shadowColor: Colors.black,
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice = 1;
  var rightDice = 1;
  void changeDice(bool left, bool right) {
    if (left) {
      leftDice = Random().nextInt(6) + 1;
    }
    if (right) {
      rightDice = Random().nextInt(6) + 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDice(true, false);
                });
              },
              child: Image(
                image: AssetImage("images/dice$leftDice.png"),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDice(false, true);
                });
              },
              child: Image(
                image: AssetImage("images/dice$rightDice.png"),
              ),
            ),
          ),
        ],
      ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
        ),
        onPressed: () {
          setState(() {
            changeDice(true, true);
          });
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
          child: Text(
            "Both",
            style: TextStyle(
              color: Colors.red[900],
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
        ),
      )
    ]);
  }
}
