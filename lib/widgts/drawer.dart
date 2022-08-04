// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../menu_item.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Container(
          color: Colors.black,
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Menu",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Container(
                  width: 380,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(118, 160, 14, 4),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 35,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Ravi Joshi",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "+918209303949",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Ravijoshi-2040",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
                child: Container(
                  width: 300,
                  height: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 41, 40, 40)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: MenuItems(
                              icon: Icons.currency_rupee,
                              title: "Jio Recharge",
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              CupertinoIcons.chevron_right_circle_fill,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: MenuItems(
                              icon: Icons.attractions_outlined,
                              title: "Jio Engage",
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              CupertinoIcons.chevron_right_circle_fill,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
                child: Container(
                  width: 300,
                  height: 270,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 41, 40, 40)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: MenuItems(
                              icon: Icons.home,
                              title: "Home",
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              CupertinoIcons.chevron_right_circle_fill,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: MenuItems(
                              icon: Icons.favorite_outline,
                              title: "Favourite Channels",
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              CupertinoIcons.chevron_right_circle_fill,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: MenuItems(
                              icon: Icons.format_list_numbered_rtl_sharp,
                              title: "My WatchList",
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              CupertinoIcons.chevron_right_circle_fill,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: MenuItems(
                              icon: Icons.adjust_sharp,
                              title: "My Recordings",
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              CupertinoIcons.chevron_right_circle_fill,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: MenuItems(
                              icon: Icons.language,
                              title: "Display/Content Language",
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              CupertinoIcons.chevron_right_circle_fill,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
                child: Container(
                  width: 300,
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 41, 40, 40)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: MenuItems(
                              icon: Icons.feed_sharp,
                              title: "Feedback",
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              CupertinoIcons.chevron_right_circle_fill,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: MenuItems(
                              icon: Icons.settings,
                              title: "Settings",
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              CupertinoIcons.chevron_right_circle_fill,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: MenuItems(
                              icon: Icons.help_outlined,
                              title: "Support",
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              CupertinoIcons.chevron_right_circle_fill,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  "Version 7.0.7",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
