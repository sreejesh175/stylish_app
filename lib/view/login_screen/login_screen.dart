import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/view/get_started_screen/get_started_screen.dart';
import 'package:stylish_app/view/global_widgets/custom_button.dart';
import 'package:stylish_app/view/utilis/color_containts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Text(
            "Welcome \nBack!",
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: ColorContaints.PRIMARYCOLOR),
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 36),
          Customtextformfeild(
              hinttex: "username or password ", prefixicon: Icons.person),
          SizedBox(height: 9),
          Customtextformfeild(hinttex: "password", prefixicon: Icons.lock),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("forgot password"),
            ],
          ),
          SizedBox(height: 51),
          CustomButton(
            buttontext: "login",
            onbuttonpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GetStartedScreen(),
                ),
              );
            },
          ),
          SizedBox(height: 63),
          Text("- OR Continue with -",
              style: TextStyle(fontSize: 20, color: ColorContaints.GREYSHADE1),
              textAlign: TextAlign.center),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              bottomwidget(
                  circlebackground: "asset/images/facebook-app-symbol 1.png"),
              bottomwidget(circlebackground: "asset/images/apple 1.png"),
              bottomwidget(circlebackground: "asset/images/apple 1.png"),
            ],
          ),
          SizedBox(height: 28),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create An Account",
                style: TextStyle(fontSize: 17),
              ),
              Text(
                "SignUp",
                style:
                    TextStyle(color: ColorContaints.primarycolor, fontSize: 17),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class bottomwidget extends StatelessWidget {
  String? circlebackground;
  bottomwidget({
    required this.circlebackground,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: ColorContaints.primarycolor,
      child: CircleAvatar(
        radius: 45,
        backgroundImage: AssetImage("$circlebackground"),
      ),
    );
  }
}

class Customtextformfeild extends StatelessWidget {
  String? hinttex;
  IconData? prefixicon;
  Customtextformfeild({this.hinttex, this.prefixicon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: ColorContaints.GREYSHADE,
          hintText: hinttex,
          prefixIcon: Icon(prefixicon),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
