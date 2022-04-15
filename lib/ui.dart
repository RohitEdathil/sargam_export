import 'dart:convert';
import 'dart:html';

import 'package:sargam_export/components/chooser.dart';
import 'package:sargam_export/components/generate_button.dart';
import 'package:sargam_export/constants.dart';
import 'package:sargam_export/data/generator.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'package:sargam_export/data/values.dart';

class AnertExporter extends StatelessWidget {
  const AnertExporter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg1,
      floatingActionButton: FloatingActionButton(
        onPressed: auth().signOut,
        child: Icon(
          Icons.power_settings_new_rounded,
          color: fg,
        ),
        backgroundColor: bg1,
      ),
      body: const Center(
        child: ExportControls(),
      ),
    );
  }
}

class ExportControls extends StatefulWidget {
  const ExportControls({Key? key}) : super(key: key);

  @override
  State<ExportControls> createState() => _ExportControlsState();
}

class _ExportControlsState extends State<ExportControls> {
  Event selected = eventNames.first;
  Status status = Status.choosing;
  List<int>? file;
  void _setChoice(Event? n) {
    selected = n ?? eventNames.first;
    setState(() {
      status = Status.choosing;
    });
  }

  void _handle() {
    if (status == Status.choosing) {
      setState(() {
        status = Status.generating;
      });
      generator(selected).then((value) {
        setState(() {
          status = Status.ready;
        });
        file = value;
      });
    } else if (status == Status.ready) {
      final content = base64Encode(file!);
      AnchorElement(
          href:
              "data:application/octet-stream;charset=utf-16le;base64,$content")
        ..setAttribute("download", "${DateTime.now()}.xlsx")
        ..click();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bg2,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DataChooser(foreground: fg, background: bg2, callback: _setChoice),
            GenerateButton(callback: _handle, status: status),
          ],
        ),
      ),
    );
  }
}
