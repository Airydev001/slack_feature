import 'package:flutter/material.dart';
//import 'package:slackpage/screen/drawer/drawerScreen.dart';
import 'package:slackpage/screen/home/home.dart';
//import 'package:http/http.dart' as http;
//import 'package:url_launcher/url_launcher.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     
      home:  MyHome(),
    );
  }
}



// Center(
//               child: ElevatedButton(
//         onPressed: _urlLauncher ,
//         child: const Text("Go to my github page"),
//       ))