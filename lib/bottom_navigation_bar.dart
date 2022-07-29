// ignore_for_file: prefer_const_constructors, prefer_collection_literals

// import 'package:curvdnavbar/homepage.dart';
// import 'package:curvdnavbar/map.dart';
// import 'package:curvdnavbar/profile.dart';
// import 'package:curvdnavbar/search.dart';
// import 'package:curvdnavbar/setting.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final navigationkey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;
  final screens = [
    // const Search(),
    // const SettingPage(),
    // const HomePage(),
    // const GoogleMap(),
    // const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = [
      Icon(Icons.search, size: 30),
      Icon(Icons.settings, size: 30),
      Icon(Icons.home, size: 30),
      Icon(Icons.location_on, size: 30),
      Icon(Icons.person, size: 30),
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(237, 223, 180, 213),
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(237, 223, 180, 213),
      //   title: Center(
      //     child: Text(
      //       "MyApp",
      //       style: TextStyle(color: Colors.blue),
      //     ),
      //   ),
      //   elevation: 0,
      // ),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Colors.blue,
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
