// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';

class MyAcordian extends StatefulWidget {
  const MyAcordian({Key? key}) : super(key: key);

  @override
  State<MyAcordian> createState() => _MyAcordianState();
}

class _MyAcordianState extends State<MyAcordian> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Accordion(
          maxOpenSections: 1,
          contentBorderColor: Color.fromARGB(255, 95, 101, 151),
          headerBackgroundColor: Color.fromARGB(255, 95, 101, 151),
          headerBackgroundColorOpened: Color.fromARGB(255, 95, 101, 151),
          contentBackgroundColor: Color.fromARGB(255, 95, 101, 151),
          scaleWhenAnimating: false,
          openAndCloseAnimation: true,
          headerPadding:
              const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
          sectionClosingHapticFeedback: SectionHapticFeedback.light,
          children: [
            AccordionSection(
              header: const Text(
                "Local",
                style: TextStyle(color: Colors.white),
              ),
              content: Column(
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Private Folder",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.graphic_eq_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Equalizer",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.playlist_play_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Video Playlists",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.language_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Network Stream",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.network_cell,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Local Network",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
            ),
            AccordionSection(
              header: const Text(
                "Online",
                style: TextStyle(color: Colors.white),
              ),
              content: Column(
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.games,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Play Fun Games",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Watch History",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.live_tv_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Activate TV",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.subscriptions,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Subscribed Channels",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "My Preferences",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Shopping List ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
            ),
            AccordionSection(
              header: const Text(
                "Music",
                style: TextStyle(color: Colors.white),
              ),
              content: Column(
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.favorite_outline_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "My Favourites",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.playlist_add_circle_sharp,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "My Playlists",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
            ),
            AccordionSection(
              header: const Text(
                "Settings",
                style: TextStyle(color: Colors.white),
              ),
              content: Column(
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.local_play_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Local Player Settings",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.download,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Download Settings",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.control_point,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Custom PIP Controls",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Kid Mode",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.umbrella,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Safe Content Mode",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.data_array_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Enable Data Saver",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
            ),
          ]),
    );
  }
}
