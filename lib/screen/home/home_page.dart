import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:florish_app/screen/home/diary_page.dart';
import 'package:florish_app/screen/home/explore_page.dart';
import 'package:florish_app/screen/home/practice_page.dart';
import 'package:florish_app/screen/home/profile_page.dart';
import 'package:florish_app/screen/home/psycho_test_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  late int _currentIndex = 0; //預設值
  final pages = [
    ExplorePage(),
    DiaryPage(),
    PracticePage(),
    PsychoTestPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      debugPrint('_currentIndex=$_currentIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 20,
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xFF2AC0D4),
        unselectedItemColor: const Color(0xFF667C85),
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: "發現",
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/botton_nav_explore_default.svg',
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/botton_nav_explore_selected.svg',
                ),
              )),
          BottomNavigationBarItem(
            label: "日記",
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'images/botton_nav_diary_default.svg',
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'images/botton_nav_diary_selected.svg',
              ),
            ),
          ),
          BottomNavigationBarItem(
              label: "練習",
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/botton_nav_practice_default.svg',
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/botton_nav_practice_selected.svg',
                ),
              )),
          BottomNavigationBarItem(
              label: "心理測驗",
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/botton_nav_psychotest_default.svg',
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/botton_nav_psychotest_selected.svg',
                ),
              )),
          BottomNavigationBarItem(
              label: "我的",
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/botton_nav_profile_default.svg',
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'images/botton_nav_profile_selected.svg',
                ),
              )),
        ],
      ),
    );
  }
}
