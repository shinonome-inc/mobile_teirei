import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:teirei20231204/pgrit_list_view.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final _pages = <Widget>[
    const PgritListView(),
    const PgritListView(),
    const PgritListView(),
    const PgritListView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 0.5,
            ),
          ),
        ),
        child: SalomonBottomBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue[900],
          items: _navBarItems,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

final _navBarItems = [
  SalomonBottomBarItem(
    icon: const Icon(Icons.home),
    title: const Text('Feed'),
    selectedColor: Colors.blue[900],
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.search_rounded),
    title: const Text('Tag'),
    selectedColor: Colors.blue[900],
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.textsms_outlined),
    title: const Text('My Page'),
    selectedColor: Colors.blue[900],
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.doorbell),
    title: const Text('Settings'),
    selectedColor: Colors.blue[900],
  ),
];
