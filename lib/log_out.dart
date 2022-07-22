import 'package:first_work/bloc/bloc_bloc.dart';
import 'package:flutter/material.dart';

class LogOut extends StatelessWidget with NavigationStates {
  const LogOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text(
        "Logout Succesfull",
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    ));
  }
}
