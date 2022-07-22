// ignore_for_file: prefer_const_constructors

import 'package:first_work/bloc/bloc_bloc.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget with NavigationStates {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Orders",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}
