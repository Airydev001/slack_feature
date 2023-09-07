import 'package:flutter/material.dart';
import 'package:slackpage/screen/drawer/drawerScreen.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse("https://github.com/Airydev001");

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Future<void> _urlLauncher() async {
    if (!await launchUrl(_url)) {
      throw Exception("Could not launch  $_url");
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text("Profile Slack Page"),
      ),
      drawer: DrawerScreen(onTap: _urlLauncher),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                  radius: 100,
                ),
                const SizedBox(height: 10),
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.09,
                  color: const Color.fromRGBO(158, 158, 158, 1),
                  child: const Center(
                    child: Text(
                      "Japh olamide",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                Text(
                  "Slack Username : ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                SizedBox(width: 50),
                Text(
                  "Japh Olamide ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
           const  SizedBox(height: 20),
            const Row(
              children: [
                Text(
                  "Phone number : ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                SizedBox(width: 50),
                Text(
                  "+2349059902593 ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: _urlLauncher,
                child: const Text(
                  "Open Github",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
