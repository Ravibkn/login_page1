// ignore_for_file: prefer_const_constructors

import 'package:first_work/widgts/chack2.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Text(
        "DrawerPage",
        style: TextStyle(fontSize: 30),
      )),
      drawer: MyADrawer(),
    );
  }
}
