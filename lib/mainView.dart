// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:you_tube/pages/add_page.dart';
import 'package:you_tube/pages/home_page.dart';
import 'package:you_tube/pages/library_page.dart';
import 'package:you_tube/pages/shorts_page.dart';
import 'package:you_tube/pages/subscriptions_page.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          HomePage(),
          ShortsPage(),
          AddPage(),
          SubscriptionsPage(),
          LibraryPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        // fixedColor: Colors.transparent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.slideshow_rounded),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, size: 40,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Library',
          ),
        ],
        backgroundColor: Colors.black45,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        showUnselectedLabels: true,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.jumpToPage(index);
        },
      ),
    );
  }
}
// BottomNavigationBar(
// items: [
// BottomNavigationBarItem(
// icon: Icon(Icons.home),
// label: 'Home',
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.slideshow_rounded),
// label: 'Shorts',
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.add_circle_outline),
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.subscriptions_outlined),
// label: 'Subscriptions',
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.video_library),
// label: 'Library',
// ),
// ],
// currentIndex: _currentIndex,
// selectedItemColor: Colors.amber[800],
// unselectedItemColor: Colors.grey,
// unselectedLabelStyle: TextStyle(color: Colors.black),
// showUnselectedLabels: true,
// onTap: (int index) {
// setState(() {
// _currentIndex = index;
// });
// _pageController.jumpToPage(index);
// },
// ),

