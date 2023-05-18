import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/screens/home_screen.dart';
import 'package:flutter_netflix_clone/screens/new_hot_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> screens = [
    const HomeScreen(
      key: PageStorageKey('homeScreen'),
    ),
    const NewandHotScreen(),
    const Scaffold()
  ];

  final Map<String, IconData> icons = {
    "Home": Icons.home,
    "New&Hot": Icons.play_arrow_outlined,
    "Downloads": Icons.download
  };

  int currentState = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentState],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: icons
            .map((title, icon) => MapEntry(
                title,
                BottomNavigationBarItem(
                    icon: Icon(
                      icon,
                      size: 30.0,
                    ),
                    label: title)))
            .values
            .toList(),
        currentIndex: currentState,
        selectedItemColor: Colors.white,
        selectedFontSize: 11.0,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 11.0,
        onTap: (index) => setState(() {
          currentState = index;
        }),
      ),
    );
  }
}
