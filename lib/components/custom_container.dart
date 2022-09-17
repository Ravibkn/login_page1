// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:first_work/style_constent.dart';
import 'package:flutter/material.dart';

class CustomContenar extends StatelessWidget {
  final String text;
  const CustomContenar({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // ignore: sort_child_properties_last
          child: Column(
            children: [
              Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(
                          15,
                        ),
                        topRight: Radius.circular(15))),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        text,
                        style: mTextStyle2,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          height: 350,
          width: 400,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300, width: 2),
              color: Colors.white,
              borderRadius: BorderRadius.circular(17)),
        ));
  }
}
