import 'package:florish_app/screen/home/diary_page.dart';
import 'package:florish_app/screen/home/explore_page.dart';
import 'package:florish_app/screen/home/practice_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  late int _currentIndex = 0; //預設值
  final pages = [ExplorePage(), DiaryPage(), PracticePage()];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "發現"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "日記"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "練習"),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xFF2AC0D4),
        onTap: _onItemTapped,
      ),
    );
  }
}
