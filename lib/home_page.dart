import 'package:electronics_app/screens/account.dart';
import 'package:electronics_app/screens/produts.dart';
import 'package:electronics_app/screens/settings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ELECTRONICS',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (() {}), icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                currentAccountPicture: CircleAvatar(
                  foregroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                accountName: Text('Caleb Rotich'),
                accountEmail: Text('scalro@gmail.com'),
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.dashboard),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }));
                  },
                  title: const Text('DashBoard'),
                ),
                ListTile(
                  leading: const Icon(Icons.e_mobiledata),
                  onTap: () => () {},
                  title: const Text('Services'),
                ),
                ListTile(
                  leading: const Icon(Icons.verified),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Products();
                    }));
                  },
                  title: const Text('Products'),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  onTap: () => () {},
                  title: const Text('User Profile'),
                ),
              ],
            )
          ],
        ),
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
          icon: IconButton(icon: const Icon(Icons.settings), onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Settings();
             }));
          },), 
          label: 'settings')
      ]),
    );
  }
}
