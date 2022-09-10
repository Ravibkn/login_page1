// ignore_for_file: prefer_const_constructors

import 'package:first_work/bloc/bloc_bloc.dart';
import 'package:first_work/routs.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget with NavigationStates {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRouts.drawerRout);
              },
              icon: Icon(Icons.menu))
        ],
        elevation: 0,
        title: Center(
          child: Text(
            "Orders",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: Center(
          child: Text(
            "Orders",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
        ),
      ),
    );
  }
}
