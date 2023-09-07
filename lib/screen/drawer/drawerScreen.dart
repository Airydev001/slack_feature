import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key, required this.onTap});
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 10,
        child: ListView(padding: EdgeInsets.zero, children: [
          const DrawerHeader(
              child: Text("Slack Profile",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600))),
          ListTile(
            leading: const Icon(Icons.home, size: 15),
            title: const Text("Profile Page"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
              leading: const Icon(Icons.work, size: 15),
              title: const Text("GithubPage Page"),
              onTap: () {
                onTap();
                
                Navigator.of(context).pop();
              }),
        ]));
  }
}
