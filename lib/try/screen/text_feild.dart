import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:winner_picker/try/get/varialble.dart';
class EtryNames extends StatefulWidget {
  @override
  _EtryNamesState createState() => _EtryNamesState();
}

class _EtryNamesState extends State<EtryNames> {
  Variables variables = Get.put(Variables());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 270.h,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(12)),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                maxLines: variables.names.length+1,
                controller: variables.textEditingController,
                decoration: InputDecoration(
                  hintText: 'Enter Name',
                ),
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    variables.names.add(value);
                    variables.textEditingController.clear();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _startShowingNames();
  }

  void _startShowingNames() {
    Future.delayed(Duration(milliseconds: 1), _showNextName);
  }

  void _showNextName() {
    // Show the next name
    if (variables.currentIndex < variables.names.length) {
      variables.textEditingController.text +=
          '${variables.names[variables.currentIndex.value]}\n'; // Add name to the text field
      variables.currentIndex++;
      print(variables.names);
      if (variables.currentIndex < variables.names.length) {
        Future.delayed(Duration(milliseconds: 1), _showNextName);
      }
    }
  }
}
