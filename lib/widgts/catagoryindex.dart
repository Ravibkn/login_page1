// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';

import 'categorymenu.dart';

class Catagory extends StatefulWidget {
  const Catagory({
    Key? key,
    required this.onChanged,
    required this.selectedIndex,
  }) : super(key: key);
  final ValueChanged<int> onChanged;
  final int selectedIndex;
  @override
  State<Catagory> createState() => _CatagoryState();
}

class _CatagoryState extends State<Catagory> {
  late ScrollController _controller;
  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categorymenu.length,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 8),
            child: TextButton(
              onPressed: () {
                widget.onChanged(index);
              },
              style: TextButton.styleFrom(
                  primary: widget.selectedIndex == index
                      ? Colors.white
                      : Colors.grey),
              child: Text(
                categorymenu[index].category,
                style: const TextStyle(fontSize: 13),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
