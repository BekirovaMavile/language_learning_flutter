import 'package:flutter/material.dart';
import 'package:language_learning_flutte/screens/alphabet_screen.dart';
import 'package:language_learning_flutte/screens/lessons_screen.dart';
import 'package:language_learning_flutte/screens/profile_screen.dart';
import 'package:language_learning_flutte/screens/vocabulary_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final List<Widget> screens = [
    const LessonsScreen(),
    const AlphabetScreen(),
    const VocabularyScreen(),
    const ProfileScreen()
  ];
  int currentIndex = 0;

  void onTabTap(int index) {
    if (currentIndex == index) return;
    currentIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTap,
        selectedFontSize: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xFF9eb4b2)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_sharp, color: Color(0xFF9eb4b2)),
            label: 'Alphabet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, color: Color(0xFF9eb4b2)),
            label: 'Vocabulary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color(0xFF9eb4b2)),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
