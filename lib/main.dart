import 'package:flutter/material.dart';
import 'package:stylish_app/view/splash_screen/splash_screen.dart';
import 'package:stylish_app/view/utilis/color_containts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: ColorContaints.SCAFFOLDCOLOR),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
