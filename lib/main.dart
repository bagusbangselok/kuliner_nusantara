import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
          backgroundColor: Color.fromRGBO(52, 179, 241, 1),
          splashTransition: SplashTransition.fadeTransition,
          splash: Column(
            children: [
              Text("Kuliner Nusantara",
                style: GoogleFonts.poppins(
                  color: Color.fromRGBO(247, 247, 247, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.w800
                ),
              ),
              Text("Food App",
                style: GoogleFonts.poppins(
                    color: Color.fromRGBO(247, 247, 247, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w700
                ),
              ),
            ],
          ),
          nextScreen: Home())
    );
  }
}


