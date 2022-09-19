// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_work/routs.dart';
import 'package:first_work/style_constent.dart';
import 'package:flutter/material.dart';

class PickupHistory extends StatefulWidget {
  const PickupHistory({Key? key}) : super(key: key);

  @override
  State<PickupHistory> createState() => _PickupHistoryState();
}

class _PickupHistoryState extends State<PickupHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(right: 40.0),
          child: Text(
            "Pickup History",
            style: mTextStyleHeader,
          ),
        )),
      ),
      body: ListView(children: [
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, MyRouts.pickupawbhistoryrout);
          },
          child: Card(
            color: Colors.grey.shade100,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("0/1"),
              ),
              title: Text("5S6W2"),
              subtitle: Text("2021-12-09"),
            ),
          ),
        )
      ]),
    );
  }
}
