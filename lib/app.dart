// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'widgts/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationBars(),
      debugShowCheckedModeBanner: false,
    );
  }
}
