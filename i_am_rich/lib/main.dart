import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        // Scaffold Documentation: https://api.flutter.dev/flutter/material/Scaffold-class.html
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          // AppBar Documentation: https://api.flutter.dev/flutter/material/AppBar-class.html
          appBar: AppBar(
            // Text Documentation: https://api.flutter.dev/flutter/widgets/Text-class.html
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I am Rich",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage("images/diamond.png"),
              ),
              Image(
                image: NetworkImage(
                    "https://c4.wallpaperflare.com/wallpaper/313/134/489/space-computer-1920x1200-desktop-wallpaper-preview.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
/*
    ShortCuts:
          * Embedding Menu: Alt+Enter
*/
