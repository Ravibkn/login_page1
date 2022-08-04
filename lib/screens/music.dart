// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyMusic extends StatelessWidget {
  const MyMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Music",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}
