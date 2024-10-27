import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/view/onboarding_screen/onboarding_screen.dart';
import 'package:stylish_app/view/utilis/color_containts.dart';
import 'package:stylish_app/view/utilis/image_containts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardingScreen(),
          ),
        );
        super.initState();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.network(ImageContaints.MYAPPLOGO,
                height: 100, width: 125, fit: BoxFit.fill),
          ),
          SizedBox(width: 9),
          Text(
            "stylish",
            style: GoogleFonts.laila(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: ColorContaints.primarycolor),
          ),
        ],
      ),
    );
  }
}
