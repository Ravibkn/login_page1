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
    return Scaffold(
        body: BlocProvider(
      create: (context) => NavigationBloc(
        NavBar(),
      ),
      child: Stack(
        children: [
          BlocBuilder<NavigationBloc, NavigationStates>(
              builder: (context, navigationstate) {
            return navigationstate as Widget;
          }),
          SideBar(),
        ],
      ),
    ));
  }
}
