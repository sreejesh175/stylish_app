import 'package:flutter/material.dart';
import 'package:stylish_app/view/utilis/color_containts.dart';

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
        ),
      ),
    );
  }
}
