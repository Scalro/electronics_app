import 'package:electronics_app/screens/main_homepage.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(const CosmeticsApp());

class CosmeticsApp extends StatelessWidget {
  const CosmeticsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electronics App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: const MainHomePage(),
    );
  }
}
