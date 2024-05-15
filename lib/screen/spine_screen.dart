import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../try/get/varialble.dart';
import '../try/screen/dialog.dart';
import '../try/screen/text_feild.dart';

class SpinningWheelOfNames extends StatefulWidget {
  @override
  _SpinningWheelOfNamesState createState() => _SpinningWheelOfNamesState();
}

class _SpinningWheelOfNamesState extends State<SpinningWheelOfNames> {
  StreamController<int> selected = StreamController<int>();

  List<Color> colors = [
    Color.fromARGB(255, 49, 205, 220),
    Color.fromARGB(255, 34, 146, 103),
    Color.fromARGB(255, 229, 101, 41),
    Color.fromARGB(255, 31, 41, 66)
  ];

  Variables variables = Get.put(Variables());
  List<FortuneItem> fortuneItems = []; // List to hold FortuneItem widgets

  // @override
  // void initState() {
  //   super.initState();
  //   _updateFortuneItems();
  // }

  @override
  Widget build(BuildContext context) {
    print(variables.names);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 400.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/pngwing.com (4).png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 300.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 12,
                          color: const Color.fromARGB(255, 243, 178, 80),
                        ),
                      ),
                      child: Obx(() {
                        return FortuneWheel(
                          duration: Duration(
                              seconds: variables.spintduration.toInt()),
                          indicators: [
                            FortuneIndicator(
                              alignment: Alignment.centerRight,
                              child: TriangleIndicator(
                                color: Color.fromARGB(255, 223, 111, 20),
                                width: 25.0.w,
                                height: 48.0.h,
                                elevation: 0,
                              ),
                            ),
                          ],
                          selected: selected.stream,
                          items: [
                            for (var name in variables.names) ...<FortuneItem>[
                              FortuneItem(
                                style: FortuneItemStyle(
                                  borderWidth: 0,
                                  color: colors[variables.names.indexOf(name) %
                                      colors.length],
                                ),
                                child: Text(name),
                              )
                            ]
                          ],
                        );
                      })),
                ),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected.add(
                          Fortune.randomInt(0, variables.names.length),
                        );
                      });
                      variables.playPause(
                          'assets/audio/${variables.sounds}.wav',
                          variables.volumePercentage.value);
                    },
                    child: Container(
                      height: 70.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40.h,
                width: 85.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Entries",
                      style: TextStyle(height: 1, fontSize: 14.sp),
                    ),
                    Obx(() {
                      return Text(
                        variables.names.length.toString(),
                        style: TextStyle(
                          height: 1,
                          fontSize: 14,
                          color: const Color.fromARGB(255, 235, 168, 67),
                        ),
                      );
                    })
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: GestureDetector(
                  onTap: () {
                    Dialogs();
                  },
                  child: Container(
                    height: 40.h,
                    width: 85.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Result".tr,
                          style: TextStyle(height: 1, fontSize: 14.sp),
                        ),
                        Text(
                          01.toString(),
                          style: TextStyle(
                            height: 1,
                            fontSize: 14.sp,
                            color: const Color.fromARGB(255, 235, 168, 67),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
             

              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialogs();
                    },
                  );
                },
                child: Container(
                  height: 40,
                  width: 85,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "More",
                        style: TextStyle(
                          height: 1,
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: Row(
            children: [
              EtryNames(),
              IconButton(
                  onPressed: () {
                    variables.playPause(
                        "assets/audio/Fast bike wheel.wav", 100);
                  },
                  icon: Icon(Icons.play_arrow)),
             
            ],
          ))
        ],
      ),
    );
  }


  String name = 'fdfdf';
  TextEditingController controller = TextEditingController();
  void _updateFortuneItems() {
    fortuneItems.clear(); // Clear the list first
    for (var name in variables.names) {
      fortuneItems.add(
        FortuneItem(
          style: FortuneItemStyle(
            borderWidth: 0,
            color: colors[variables.names.indexOf(name) % colors.length],
          ),
          child: Text(name),
        ),
      );
    }
  }
}
