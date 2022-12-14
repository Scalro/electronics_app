import 'package:flutter/material.dart';

import '../home_page.dart';
import 'settings.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Details'),
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