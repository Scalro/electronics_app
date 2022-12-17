import 'package:electronics_app/screens/account.dart';
import 'package:electronics_app/screens/settings.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  List pages = [const HomePage(), const Account(), const Settings()];
  int selectedItem = 0;

  void _onTap(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedItem,
          onTap: _onTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Accounts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ]),
    );
  }
}
