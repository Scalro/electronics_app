import 'package:flutter/material.dart';

import '../home_page.dart';
import 'account.dart';


class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
            bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.account_box),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Account();
                }));
              },
            ),
            label: 'Acount'),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Settings();
                }));
              },
            ),
            label: 'settings')
      ]),
    );
  }
}