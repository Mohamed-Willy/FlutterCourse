import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: Padding(
          padding: EdgeInsets.all(10),
          child: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> scoreKeeper = [];
  List<String> questions = [
    "Is the Earth round?",
    "Can dogs fly?",
    "Are bananas a type of fruit?",
    "Is the sun a source of light?",
    "Do humans have gills?",
    "Is water wet?",
    "Can birds swim?",
    "Is the moon made of cheese?",
    "Does gravity exist?",
    "Can plants photosynthesize?",
    "Congratulations You Finished!"
  ];
  List<bool> answers = [
    true,
    false,
    true,
    true,
    false,
    false,
    true,
    false,
    true,
    true
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Center(
            child: Text(
              questions[index],
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: 80,
            child: ElevatedButton(
              onPressed: () {
                if (answers[index] && index < questions.length -1) {
                  scoreKeeper.add(
                    const Icon(
                      Icons.check,
                      color: Colors.lightGreenAccent,
                    ),
                  );
                }
                else if (index < questions.length -1){
                  scoreKeeper.add(
                    const Icon(
                      Icons.close,
                      color: Colors.redAccent,
                    ),
                  );
                }
                setState(() {
                  if(index < questions.length - 1) {
                    index++;
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              child: const Text(
                "YES",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: 80,
            child: ElevatedButton(
              onPressed: () {
                if (!answers[index] && index < questions.length -1) {
                  scoreKeeper.add(
                    const Icon(
                      Icons.check,
                      color: Colors.lightGreenAccent,
                    ),
                  );
                }
                else if (index < questions.length -1){
                  scoreKeeper.add(
                    const Icon(
                      Icons.close,
                      color: Colors.redAccent,
                    ),
                  );
                }
                setState(() {
                  if(index < questions.length - 1) {
                    index++;
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              child: const Text(
                "NO",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
