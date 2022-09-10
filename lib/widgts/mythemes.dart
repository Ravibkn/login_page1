import 'package:flutter/material.dart';

class MyTheme {
  static final lighTheme = ThemeData(
      primarySwatch: Colors.blueGrey,
      primaryColor: Colors.black,
      canvasColor: Colors.white,
      cardColor: Colors.blue,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ));
  static final darkTheme = ThemeData(
      primarySwatch: Colors.grey,
      primaryColor: Colors.white,
      canvasColor: Colors.black12,
      cardColor: Colors.grey,
      appBarTheme: const AppBarTheme(
        color: Colors.black87,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ));
}
