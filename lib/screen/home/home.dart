import 'package:flutter/material.dart';

import 'package:slackpage/screen/home/helper.dart';
import 'package:slackpage/screen/profile/profile.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => const ProfilePage()));
      },
      child: Scaffold(
          backgroundColor: Colors.purple,
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Image.asset("assets/images/home.png",
                  width: screenWidth, height: screenHeight * 0.7),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  FormatText(text: "Welcome to"),
                  SizedBox(height: 5),
                  FormatText(text: "My"),
                  SizedBox(height: 10),
                  FormatText(text: "Slack Profile"),
                ],
              )
            ],
          )),
    );
  }
}
