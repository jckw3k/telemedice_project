import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:telemedice_project/pages/appointment_screen.dart';
import 'package:telemedice_project/pages/calendar.dart';
import 'package:telemedice_project/pages/home.dart';
import 'package:telemedice_project/pages/message.dart';
import 'package:telemedice_project/pages/profile.dart';
import 'package:telemedice_project/pages/search.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Search search;
  late Calendar calendar;
  late Messages messages;
  late Profile profile;

  @override
  void initState() {
    homepage = Home();
    search = Search();
    calendar = Calendar();
    messages = Messages();
    profile = Profile();
    pages = [homepage, search, calendar, messages , profile];
    super.initState();
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
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
            ),
            Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.calendar_today_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.message_outlined,
              color: Colors.white,
            ),
              Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
          ]),
      body: pages[currentTabIndex],
    );
  }
}