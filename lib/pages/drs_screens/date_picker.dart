// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DatePickker extends StatefulWidget {
  const DatePickker({Key? key}) : super(key: key);

  @override
  State<DatePickker> createState() => _DatePickkerState();
}

class _DatePickkerState extends State<DatePickker> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Row(
        children: [
          Icon(Icons.calendar_month),
          Text(""),
        ],
      ),
      minWidth: 30,
      color: Colors.cyan,
      onPressed: () {},
    );
  }
}
