import 'package:flutter/material.dart';
import 'package:stylish_app/view/utilis/color_containts.dart';

class CustomButton extends StatelessWidget {
  final String buttontext;
  final void Function()? onbuttonpressed;
  const CustomButton(
      {super.key, required this.buttontext, this.onbuttonpressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onbuttonpressed,
      child: Container(
        height: 55,
        width: double.infinity,
        color: ColorContaints.primarycolor,
        child: Text(
          buttontext,
          style: TextStyle(fontSize: 20),
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
