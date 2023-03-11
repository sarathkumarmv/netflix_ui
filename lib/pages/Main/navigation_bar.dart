import 'package:flutter/material.dart';

ValueNotifier<int> indexchangenotifier = ValueNotifier(0);

class Navigationbar extends StatelessWidget {
  const Navigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexchangenotifier,
      builder: (BuildContext context, int value, Widget? child) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: value,
          onTap: (index) {
            indexchangenotifier.value = index;
          },
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: 'New & Hot',
              icon: Icon(
                Icons.collections,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Fast Laughs',
              icon: Icon(
                Icons.emoji_emotions,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(
                Icons.search,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Downloads',
              icon: Icon(
                Icons.arrow_circle_down_rounded,
              ),
            ),
          ],
        );
      },
    );
  }
}