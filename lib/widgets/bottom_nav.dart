import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:service_app/pages/chat_page.dart';
import 'package:service_app/pages/home.dart';
import 'package:service_app/pages/order.dart';
import 'package:service_app/pages/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;

  late Home homePage;
  late Order orderPage;
  late ChatPage chatPage;
  late Profile profilePage;

  int currentTabIndex = 0;

  @override
  void initState() {
    homePage = Home();
    orderPage = Order();
    chatPage = ChatPage();
    profilePage = Profile();
    pages = [homePage, orderPage, chatPage, profilePage];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 70,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 20.0,
            ),
            Icon(
              Icons.shop_outlined,
              color: Colors.white,
              size: 20.0,
            ),
            Icon(
              Icons.chat_outlined,
              color: Colors.white,
              size: 20.0,
            ),
            Icon(
              Icons.person_outline,
              color: Colors.white,
              size: 20.0,
            ),
          ]),
      body: pages[currentTabIndex],
    );
  }
}
