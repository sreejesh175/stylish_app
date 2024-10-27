import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/view/utilis/color_containts.dart';
import 'package:stylish_app/view/utilis/image_containts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorContaints.SCAFFOLDCOLOR,
      appBar: AppBar(
        leading: CircleAvatar(
          child: Icon(Icons.menu),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageContaints.MYAPPLOGO,
              height: 31,
              width: 30,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 9),
          ],
        ),
        actions: [
          CircleAvatar(radius: 100),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorContaints.GREYSHADE,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.search),
                hintText: "search any products",
                suffixIcon: Icon(Icons.keyboard_voice_outlined),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "ALL Featured",
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              Container(
                child: Row(
                  children: [
                    Text("Sort"),
                    Icon(Icons.swap_vert),
                  ],
                ),
                decoration: BoxDecoration(),
              ),
              Container(
                child: Row(
                  children: [
                    Text("Filter"),
                    Icon(Icons.filter_alt_outlined),
                  ],
                ),
                decoration: BoxDecoration(),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                    ),
                    Text("allfeatured"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                    ),
                    Text("allfeatured"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                    ),
                    Text("allfeatured"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                    ),
                    Text("allfeatured"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                    ),
                    Text("allfeatured"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                    ),
                    Text("allfeatured"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                    ),
                    Text("allfeatured"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
