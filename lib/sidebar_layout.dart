// ignore_for_file: prefer_const_constructors

import 'package:first_work/bloc/bloc_bloc.dart';
import 'package:first_work/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bottom_navigation_bar.dart';

// import 'bottom_navigation_bar.dart';

class SidebarLayOut extends StatefulWidget {
  const SidebarLayOut({Key? key}) : super(key: key);

  @override
  State<SidebarLayOut> createState() => _SidebarLayOutState();
}

class _SidebarLayOutState extends State<SidebarLayOut> {
  @override
  Widget build(BuildContext context) {
    // final items = [
    //   Icon(Icons.search, size: 30),
    //   Icon(Icons.settings, size: 30),
    //   Icon(Icons.home, size: 30),
    //   Icon(Icons.location_on, size: 30),
    //   Icon(Icons.person, size: 30),
    // ];
    return Scaffold(
        // bottomNavigationBar: Theme(
        //   data: Theme.of(context)
        //       .copyWith(iconTheme: IconThemeData(color: Colors.white)),
        //   child: CurvedNavigationBar(
        //     items: items,
        //     height: 50,
        //     backgroundColor: Colors.white,
        //     color: Colors.blue,
        //     animationCurve: Curves.linear,
        //     animationDuration: Duration(milliseconds: 600),
        //   ),
        // ),
        body: BlocProvider(
      create: (context) => NavigationBloc(
        // HomePage(),
        NavBar(),
      ),
      child: Stack(
        children: [
          BlocBuilder<NavigationBloc, NavigationStates>(
              builder: (context, navigationstate) {
            return navigationstate as Widget;
          }),
          // MyAccount(),

          SideBar(),
        ],
      ),
    ));
  }
}
