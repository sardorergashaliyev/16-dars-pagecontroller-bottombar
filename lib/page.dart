import 'package:flutter/material.dart';

import 'home.dart';
import 'profile.dart';
import 'search.dart';
import 'settings.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int barIndex = 0;

  final PageController _pageController = PageController();

  List<Widget> pages = [
    const MyHome(),
    const MySearch(),
    const MyProfile(),
    const MySettings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          barIndex = index;
          setState(() {});
        },
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: barIndex,
        onTap: (index) {
          barIndex = index;
          _pageController.jumpToPage(barIndex);
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
