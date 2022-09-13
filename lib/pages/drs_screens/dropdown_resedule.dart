// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DropDownResedule extends StatefulWidget {
  const DropDownResedule({Key? key}) : super(key: key);

  @override
  State<DropDownResedule> createState() => _DropDownReseduleState();
}

class _DropDownReseduleState extends State<DropDownResedule> {
  final items = [
    'Select Reasion',
    'Miss-Routed',
    'Customer Not Response',
    'Cash Not Ready',
    'Mobile Number Not Valid',
    'Customer Refused To Accept',
    'Reschedule'
  ];
  String? selectedItem = 'Select Reasion';
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(40),
      child: SizedBox(
        width: 250,
        child: DropdownButton<String>(
          underline: DropdownButtonHideUnderline(child: Container()),
          borderRadius: BorderRadius.circular(15),
          value: selectedItem,
          items: items
              .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(fontSize: 15),
                  )))
              .toList(),
          onChanged: (item) {
            setState(() {
              selectedItem = item;
            });
          },
        ),
      ),
    );
  }
}
