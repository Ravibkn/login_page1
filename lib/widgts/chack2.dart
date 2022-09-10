// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:first_work/widgts/themes.dart';
import 'package:flutter/material.dart';

import 'chack4.dart';

class MyADrawer extends StatefulWidget {
  const MyADrawer({Key? key}) : super(key: key);

  @override
  State<MyADrawer> createState() => _MyADrawerState();
}

class _MyADrawerState extends State<MyADrawer> {
  bool darkThemeEnabled = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 51, 50, 94),
        body: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      color: Color.fromARGB(255, 95, 101, 151).withOpacity(.83),
                      height: 150,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, bottom: 60),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 25,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, bottom: 60),
                            child: Text(
                              "Ravi Joshi",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 89, 84, 119),
                              borderRadius: BorderRadius.circular(12)),
                          height: 50,
                          width: 340,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.stars,
                                  color: Colors.yellow.shade700,
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              SizedBox(
                                width: 160,
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  'Coins Center',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.white),
                                  shape: StadiumBorder(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 20,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "My",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 20,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "M-Cloud",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 20,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Mx Share",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 20,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Local Music",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 215,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 95, 101, 151),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.whatsapp,
                              color: Colors.white,
                              size: 22,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "WhatsApp StatusSaver",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.language,
                              color: Colors.white,
                              size: 22,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "App Language",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.font_download,
                              color: Colors.white,
                              size: 22,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Content Languages",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.dark_mode,
                                color: Colors.white,
                                size: 22,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  "Dark Theme",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ),
                              Switch.adaptive(
                                  activeColor:
                                      Color.fromARGB(255, 135, 144, 221),
                                  value: (false),
                                  onChanged: (changedTheme) {
                                    darkThemeEnabled = changedTheme;
                                    setState(() {
                                      darkThemeEnabled
                                          ? MyThemes.darkTheme(context)
                                          : MyThemes.lightTheme(context);
                                    });
                                  })
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.white,
                              size: 22,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Make Videos default",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(child: MyAcordian()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
