import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int index) {
    final audio = AudioPlayer();
    audio.play(AssetSource("note ($index).mp3"));
  }

  Widget customButton(Color c, int index) {
    return Expanded(
        child: Container(
      color: c,
      child: TextButton(
        onPressed: () {
          playSound(index);
        },
        style: TextButton.styleFrom(
          minimumSize: Size.infinite,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        child: const Text(""),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              customButton(Colors.red, 1),
              customButton(Colors.orange, 2),
              customButton(Colors.yellow, 3),
              customButton(Colors.green, 4),
              customButton(Colors.blue, 5),
              customButton(Colors.indigo, 6),
              customButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}