import 'package:flutter/material.dart';
import 'package:stylish_app/view/global_widgets/custom_button.dart';
import 'package:stylish_app/view/home_screen/home_screen%20.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("asset/images/unsplash_fouVDmGXoPI.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 360,
            width: 390,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff000000A1),
                Color(0xff00000000),
              ], begin: Alignment.bottomLeft, end: Alignment.topRight),
            ),
          ),
          Text(
            "You want Authentic,\n here you go",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Text(
            "Find it Here ,Buy It Now",
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(height: 80),
          CustomButton(
            buttontext: "Get Started",
            onbuttonpressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
          ),
        ],
      ),
    ));
  }
}
