// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyMovies extends StatelessWidget {
  const MyMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Movies",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}
