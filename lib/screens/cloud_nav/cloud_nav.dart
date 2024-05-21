import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vaccination/screens/cloud.dart';
import 'package:vaccination/screens/cloud_nav/cloud_main.dart';

class NavCustom extends StatefulWidget {
  const NavCustom({super.key});

  @override
  State<NavCustom> createState() => _NavCustomState();
}

class _NavCustomState extends State<NavCustom> {
  int activePage = 0;
  List<BottomNavigationBarItem> listItem = [
    const BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home), label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.list_bullet), label: 'List'),
  ];

  List<Widget> listPages = [
    const Cloud(),
    const Detail(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: listPages[activePage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activePage,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        backgroundColor: Colors.white24,
        onTap: (index) {
          setState(() {
            activePage = index;
            print(index);
          });
        },
        items: listItem,
      ),
    );
  }
}
