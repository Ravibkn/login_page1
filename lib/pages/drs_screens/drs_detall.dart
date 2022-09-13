// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_work/pages/drs_screens/dropdown.dart';
import 'package:first_work/pages/drs_screens/dropdown_resedule.dart';
import 'package:first_work/pages/drs_screens/verifay.dart';
import 'package:first_work/style_constent.dart';
import 'package:flutter/material.dart';

enum Auth {
  deliver,
  undeliver,
  reshdule,
  nulls,
}

class DrsDetall extends StatefulWidget {
  const DrsDetall({Key? key}) : super(key: key);

  @override
  State<DrsDetall> createState() => _DrsDetallState();
}

class _DrsDetallState extends State<DrsDetall> {
  Auth _auth = Auth.nulls;
  final _delivaryFormKey = GlobalKey<FormState>();
  final _undelivaryFormKey = GlobalKey<FormState>();
  final _reshduleFormKey = GlobalKey<FormState>();

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
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  15,
                                ),
                                topRight: Radius.circular(15))),
                        child: Center(
                            child: Text(
                          "Delivery",
                          style: mTextStyle2,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 5, right: 18),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "AWB No",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "1286845222",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Nane",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Hwllo",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Email",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Li@gmail.com",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Mobile No",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50.0),
                                  child: Icon(Icons.call),
                                ),
                                Text(
                                  "Call To Customer",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Address",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Nathusar Gate",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  height: 190,
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
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  15,
                                ),
                                topRight: Radius.circular(15))),
                        child: Center(
                            child: Text(
                          "Collection",
                          style: mTextStyle2,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 5, right: 18),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Name",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "Pankaj",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Email",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "KK@gmail.com",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Mobile",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "0123456789",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Address",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Nathusar Gate",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  height: 160,
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
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  15,
                                ),
                                topRight: Radius.circular(15))),
                        child: Center(
                            child: Text(
                          "Payment Info",
                          style: mTextStyle2,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 5, right: 18),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Booking-Type",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "Cash",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Cod Amount",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "0.00",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Service Charge",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "169.92",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Amount",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "169.92",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  height: 160,
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
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  15,
                                ),
                                topRight: Radius.circular(15))),
                        child: Center(
                            child: Text(
                          "Other Details",
                          style: mTextStyle2,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 5, right: 18),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "AWB No",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "1286845222",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Booking Date/",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "2022-09-10",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Time",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Testtt",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Parcel Description Weight",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "1 (KG)",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Shipment Type",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            // Divider(
                            //   indent: 0,
                            //   endIndent: 0,
                            //   thickness: 2,
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  height: 190,
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300, width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300, width: 2),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Radio(
                              value: Auth.deliver,
                              activeColor: Colors.cyan,
                              groupValue: _auth,
                              onChanged: (Auth? val) {
                                setState(() {
                                  _auth = val!;
                                });
                              }),
                          Expanded(
                            child: Text(
                              'Deliver',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Radio(
                              value: Auth.undeliver,
                              activeColor: Colors.cyan,
                              groupValue: _auth,
                              onChanged: (Auth? val) {
                                setState(() {
                                  _auth = val!;
                                });
                              }),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 2.0),
                              child: Text(
                                'Undeliver',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Radio(
                              value: Auth.reshdule,
                              activeColor: Colors.cyan,
                              groupValue: _auth,
                              onChanged: (Auth? val) {
                                setState(() {
                                  _auth = val!;
                                });
                              }),
                          Expanded(
                            child: Text(
                              'Reshedule',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              if (_auth == Auth.deliver)
                Form(
                  key: _delivaryFormKey,
                  child: Column(
                    children: [
                      Verifay(),
                    ],
                  ),
                ),
              if (_auth == Auth.reshdule)
                Form(
                  key: _reshduleFormKey,
                  child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      width: 340,
                      child: Row(
                        children: [
                          DropDownResedule(),
                          ElevatedButton(onPressed: () {}, child: Text("55"))
                        ],
                      )),
                ),
              if (_auth == Auth.undeliver)
                Form(
                  key: _undelivaryFormKey,
                  child: Column(
                    children: [
                      Container(
                        width: 340,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: DropDown(),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: Colors.grey.shade300, width: 2),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Update Drs"),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.cyan),
                            minimumSize: MaterialStateProperty.all(
                              Size(60, 40),
                            ),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide(
                                        color: Colors.grey.shade300)))),
                      )
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
