import 'package:first_work/bloc/bloc_bloc.dart';
import 'package:flutter/material.dart';

class MyWishList extends StatelessWidget with NavigationStates {
  const MyWishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text(
        "Wishlist",
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    ));
  }
}
