// ignore_for_file: prefer_const_constructors

import 'package:first_work/bloc/bloc_bloc.dart';
import 'package:flutter/material.dart';


class MyAccount extends StatefulWidget with NavigationStates {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("MyAccounts"),
      ),
    );
  }
}
