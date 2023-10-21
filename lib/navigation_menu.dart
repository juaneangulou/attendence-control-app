import 'package:flutter/material.dart';

class NavigationMenu extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;

  NavigationMenu({required this.currentIndex, required this.onTabTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle),
          label: 'Create Course',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Create User',
        ),
        // Agrega más elementos según tus necesidades.
      ],
    );
  }
}
