import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          // Container Documentation: https://api.flutter.dev/flutter/widgets/Container-class.html
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              // CircleAvatar Documentation: https://api.flutter.dev/flutter/material/CircleAvatar-class.html
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/profile.jpg"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Mohamed Waled",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BungeeSpice',
                ),
              ),
              Transform.scale(
                scaleY: 2,
                child: const Text(
                  "Software Engineer | Game Developer",
                  style: TextStyle(
                    color: Colors.black87,
                    letterSpacing: 2,
                    fontSize: 15,
                    fontFamily: 'RubikGlitch',
                  ),
                ),
              ),
              const SizedBox(
                width: 300,
                height: 30,
                child: Divider(
                  thickness: 2,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              // Phone
              const Card(
                margin: EdgeInsets.all(10.0),
                color: Colors.black87,
                child: ListTile(
                  leading: Icon(
                    Icons.phone_android,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "+201029239852 - +201123385997",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Email
              const Card(
                margin: EdgeInsets.all(10.0),
                color: Colors.black87,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "mohamedwilly2001@gmail.com",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Linkedin
              const Card(
                margin: EdgeInsets.all(10.0),
                color: Colors.black87,
                child: ListTile(
                  title: Text(
                    "LinkedIn: Mohamed Willy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Github
              const Card(
                margin: EdgeInsets.all(10.0),
                color: Colors.black87,
                child: ListTile(
                  title: Text(
                    "GitHub: Mohamed-Willy",

                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
