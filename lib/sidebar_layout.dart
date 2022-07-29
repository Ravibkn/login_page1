// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_work/bloc/bloc_bloc.dart';
import 'package:first_work/home_page.dart';
import 'package:first_work/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SidebarLayOut extends StatelessWidget {
  const SidebarLayOut({Key? key}) : super(key: key);

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
        bottomNavigationBar: CurvedNavigationBar(
          items: items,
          height: 60,
        ),
        body: BlocProvider(
          create: (context) => NavigationBloc(
            HomePage(),
            // NavBar(),
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
