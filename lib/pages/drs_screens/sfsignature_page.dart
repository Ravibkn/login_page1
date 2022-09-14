// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_final_fields

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

import '../../style_constent.dart';
import 'custom_text_form_field.dart';
import 'package:universal_html/html.dart' show AnchorElement;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:convert';
import 'dart:ui' as ui;
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';

class SfSignnature extends StatefulWidget {
  const SfSignnature({Key? key}) : super(key: key);

  @override
  State<SfSignnature> createState() => _SfSignnatureState();
}

class _SfSignnatureState extends State<SfSignnature> {
  GlobalKey<SfSignaturePadState> _signnaturePadKeyState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
          child: Text("Update Drs", style: mTextStyleHeader),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
          child: Column(
            children: [
              Container(
                height: 290,
                width: 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17)),
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
                        "Signnature",
                        style: mTextStyle2,
                      )),
                    ),
                    SfSignaturePad(
                      key: _signnaturePadKeyState,
                      strokeColor: Colors.black,
                      backgroundColor: Colors.white,
                      minimumStrokeWidth: 4.0,
                      maximumStrokeWidth: 6.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      ui.Image image =
                          await _signnaturePadKeyState.currentState!.toImage();
                      final byteData = await image.toByteData(
                          format: ui.ImageByteFormat.png);
                      final Uint8List imageByts = byteData!.buffer.asUint8List(
                          byteData.offsetInBytes, byteData.lengthInBytes);

                      final String path =
                          (await getApplicationSupportDirectory()).path;
                      final String filename = '$path/Output.png';
                      final File file = File(filename);
                      await file.writeAsBytes(imageByts, flush: true);
                      OpenFile.open(filename);
                    },
                    child: Text(
                      "Save",
                      style: mTextStyleButton,
                    ),
                    style: mButtonStyle,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      _signnaturePadKeyState.currentState!.clear();
                    },
                    child: Text(
                      "Reset",
                      style: mTextStyleButton,
                    ),
                    style: mButtonStyle,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: mButtonStyle,
                onPressed: () {},
                child: Text(
                  "Take Photo",
                  style: mTextStyleButton,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(hintText: "Delivered To"),
              SizedBox(
                height: 10,
              ),
              CustomTextFormField(hintText: "Delivered Phone"),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: mButtonStyle,
                onPressed: () {},
                child: Text(
                  "Deliver Drs",
                  style: mTextStyleButton,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
