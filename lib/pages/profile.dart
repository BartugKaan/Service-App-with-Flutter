import 'package:flutter/material.dart';
import 'package:service_app/widgets/settings_row_widget.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(right: 10, left: 10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 225, 232, 235),
                    Color.fromARGB(255, 197, 227, 244),
                  ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        "images/profileImage.jpeg",
                        width: 140,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Bartuğ Kaan Çelebi",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff284a79)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Column(
                children: [
                  SettingRow(name: "Account Settings"),
                  SizedBox(height: 10),
                  SettingRow(name: "App Settings"),
                  SizedBox(height: 10),
                  SettingRow(name: "Notification Settings"),
                  SizedBox(height: 10),
                  SettingRow(name: "More"),
                  SizedBox(height: 10),
                  SettingRow(name: "Log out"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
