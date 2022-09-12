// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: Colors.black,
        canvasColor: Colors.white,
        cardColor: Colors.blue,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0,
            // ignore: prefer_const_literals_to_create_immutables
            iconTheme: IconThemeData(
              color: Colors.white,
              // ignore: prefer_const_literals_to_create_immutables
              shadows: [
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 3.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 8.0,
                  color: Color.fromARGB(124, 94, 94, 107),
                ),
              ],
            ),
            toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
            titleTextStyle: Theme.of(context).textTheme.headline6),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.white,
        canvasColor: Colors.black12,
        cardColor: Colors.grey,
        appBarTheme: AppBarTheme(
            color: Colors.black87,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.white),
            toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
            titleTextStyle: Theme.of(context).textTheme.headline6),
      );
}
