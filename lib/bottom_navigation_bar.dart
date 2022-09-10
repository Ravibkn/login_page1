// ignore_for_file: prefer_const_constructors, prefer_collection_literals

// import 'package:curvdnavbar/homepage.dart';
// import 'package:curvdnavbar/map.dart';
// import 'package:curvdnavbar/profile.dart';
// import 'package:curvdnavbar/search.dart';
// import 'package:curvdnavbar/setting.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_work/bloc/bloc_bloc.dart';

import 'package:first_work/page4.dart';
import 'package:first_work/pages/profile.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class NavBar extends StatefulWidget with NavigationStates {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final navigationkey = GlobalKey<CurvedNavigationBarState>();
  int index = 1;
  final screens = [
    // const Page1(),
    // const Page2(),
    const Page4(),
    const HomePage(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = [
      // Icon(Icons.search, size: 30),
      // Icon(Icons.settings, size: 30),
      Icon(Icons.location_on, size: 30),
      Icon(Icons.home, size: 30),
      Icon(Icons.person, size: 30),
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Color.fromARGB(237, 223, 180, 213),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.cyan,
          height: 60,
          animationCurve: Curves.linear,
          animationDuration: Duration(milliseconds: 600),
          items: items,
          index: index,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
  }
}
