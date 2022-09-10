// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ScanAwb extends StatefulWidget {
  const ScanAwb({Key? key}) : super(key: key);

  @override
  State<ScanAwb> createState() => _ScanAwbState();
}

class _ScanAwbState extends State<ScanAwb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(right: 40.0),
          child: Text(
            "Scan AWB",
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
        )),
      ),
    );
  }
}
