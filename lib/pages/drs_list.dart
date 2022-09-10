import 'package:flutter/material.dart';

class DrsList extends StatefulWidget {
  const DrsList({Key? key}) : super(key: key);

  @override
  State<DrsList> createState() => _DrsListState();
}

class _DrsListState extends State<DrsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Center(
            child: Padding(
          padding: EdgeInsets.only(right: 40.0),
          child: Text(
            "Drs List",
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
