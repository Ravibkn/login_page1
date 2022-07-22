// ignore_for_file: prefer_const_constructors

import 'package:first_work/bloc/bloc_bloc.dart';
import 'package:first_work/home_page.dart';
import 'package:first_work/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SidebarLayOut extends StatelessWidget {
  const SidebarLayOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => NavigationBloc(
        HomePage(),
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
