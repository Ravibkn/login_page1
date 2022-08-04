// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgts/catagoryindex.dart';

class Games extends StatefulWidget {
  const Games({Key? key}) : super(key: key);

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: 50,
        color: Color.fromARGB(255, 22, 22, 22),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Catagory(onChanged: (value) {}, selectedIndex: 0),
            )
          ],
        ),
      ),
    );
  }
}
