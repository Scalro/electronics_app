import 'package:flutter/material.dart';

import '../Widgets/listview.dart';
import '../home_page.dart';
import 'account.dart';
import 'settings.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Products',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        leading:  IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextButton(
                onPressed: () {}, child: const Text('Product Descripton')),
            TextButton(onPressed: () {}, child: const Text('Product Value'))
          ]),
          ListTileWidget(
              title: 'Laptop',
              subTitle: 'Hp EliteBook 840',
              imgurl: 'assets/images/profile.jpg',
              trailingData: 'Ksh 35,000'),
          ListTileWidget(
              title: 'Phone',
              subTitle: 'Sumsung A13',
              imgurl: 'assets/images/profile.jpg',
              trailingData: 'Ksh 15,000')
        ],
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
