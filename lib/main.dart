// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/Pages/CartPage.dart';
import 'package:food_app/Pages/homePage.dart';
import 'package:food_app/Pages/itemPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foods app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      routes: {
        '/': (context) => HomePage(),
        'CartPage': (context) => CartPage(),
        'itemPage': (context) => ItemPage(),
      },
    );
  }
}
