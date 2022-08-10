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
            iconTheme: IconThemeData(color: Colors.black),
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
