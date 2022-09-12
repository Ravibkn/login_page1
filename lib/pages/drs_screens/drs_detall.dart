// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:first_work/style_constent.dart';
import 'package:flutter/material.dart';

class DrsDetall extends StatefulWidget {
  const DrsDetall({Key? key}) : super(key: key);

  @override
  State<DrsDetall> createState() => _DrsDetallState();
}

class _DrsDetallState extends State<DrsDetall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 55.0),
          child: const Text(
            "Drs Detall",
            style: TextStyle(
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 3.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 8.0,
                  color: Color.fromARGB(124, 94, 94, 107),
                ),
              ],
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: 400,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                15,
                              ),
                              topRight: Radius.circular(15))),
                      child: Center(child: const Text("STICKEEEYYYY")),
                    ),
                    Text(" ")
                  ],
                ),
                height: 230,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
              child: Container(
                child: Card(
                  child: Center(
                      child: Text(
                    "Collection",
                    style: mTextStyle2,
                  )),
                  color: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  margin: EdgeInsets.only(
                    bottom: 195,
                  ),
                ),
                height: 230,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
              child: Container(
                child: Card(
                  child: Center(
                      child: Text(
                    "Payment Info",
                    style: mTextStyle2,
                  )),
                  color: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  margin: EdgeInsets.only(
                    bottom: 195,
                  ),
                ),
                height: 230,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
              child: Container(
                child: Card(
                  child: Center(
                      child: Text(
                    "Other Details",
                    style: mTextStyle2,
                  )),
                  color: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  margin: EdgeInsets.only(
                    bottom: 195,
                  ),
                ),
                height: 230,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17)),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
