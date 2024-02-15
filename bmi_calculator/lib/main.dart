import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'input_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      // ThemeData Documentation: https://api.flutter.dev/flutter/material/ThemeData-class.html
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      routes: {
        '/': (context) => const InputPage(),
        '/result': (context) => ResultsPage(title: finalTitle, score: finalScore, description: finalDescription, titleColor: finalTitleColor)
      },
      initialRoute: '/',
    );
  }
}

