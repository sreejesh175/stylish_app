import 'package:flutter/material.dart';
import 'package:stylish_app/view/login_screen/login_screen.dart';
import 'package:stylish_app/view/utilis/image_containts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(
          "1/3",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            child: Text(
              "Skip",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
          SizedBox(width: 60),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(ImageContaints.ONBOARD,
                height: 300, width: 300, fit: BoxFit.cover),
          ),
          Text(
            "Choose Products ",
            style: TextStyle(fontSize: 29, fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 10),
          Text(
            "Amet minim mollit non deserunt ullamco est \nsit aliqua dolor do amet sint. Velit officia\n consequat duis enim velit mollit.",
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xffA8A8A9),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Prev",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            Text(
              "Next",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
