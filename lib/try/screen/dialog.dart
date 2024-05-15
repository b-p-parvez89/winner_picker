import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:winner_picker/try/get/varialble.dart';

class Dialogs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Variables variables = Get.put(Variables());

    return AlertDialog(
      content: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: [
              Row(
                children: [
                  Text(
                    "Sound: ".tr,
                    style: TextStyle(fontSize: 20),
                  ),
                  DropdownButton<String>(
                    value: variables.sounds.value, // Set initial value
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        variables.sounds.value = newValue;
                      }
                    },
                    items: variables.sound.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value, // Ensure each value is unique
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      );
                    }).toList(),
                  ),
                  IconButton(
                      iconSize: 24.sp,
                      icon: Obx(() => Icon(
                            variables.isPlaying.value
                                ? Icons.pause
                                : Icons.play_arrow,
                          )),
                      onPressed: () {
                        variables.playPause(
                            'assets/audio/${variables.sounds.value}.wav', // Use variables.sounds.value instead of variables.sounds
                            variables.volumePercentage.value);
                      }),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Volume: ",
                    style: TextStyle(color: Colors.black, fontSize: 12.sp),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 180.w,
                        child: Slider(
                          value: variables.volumePercentage.value,
                          min: 0,
                          max: 100,
                          onChanged: (value) {
                            variables.volumePercentage.value = value;
                          },
                          divisions: 100,
                          label: variables.volumePercentage.value
                              .round()
                              .toString(),
                        ),
                      ),
                      Wrap(
                        spacing: 6.w,
                        children: List.generate(6, (index) {
                          double percent = index * 20.0;
                          return GestureDetector(
                            onTap: () {
                              variables.volumePercentage.value = percent;
                            },
                            child: Text(
                              '$percent%',
                              style: TextStyle(
                                fontSize: 8.sp,
                                color:
                                    variables.volumePercentage.value == percent
                                        ? Colors.blue
                                        : Colors.black,
                              ),
                            ),
                          );
                        }),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Spin time (seconds)",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Obx(
                () => Slider(
                  value: variables.spintduration.value,
                  min: 10,
                  max: 200,
                  onChanged: (double value) {
                    variables.spintduration.value = value;
                  },
                  label: variables.spintduration.value.round().toString(),
                ),
              ),
              Wrap(
                spacing: 10,
                children: variables.values.map((value) {
                  return GestureDetector(
                    onTap: () {
                      variables.spintduration.value = value;
                    },
                    child: Text(
                      value.toString(),
                      style: TextStyle(
                        fontSize: 10,
                        color: variables.spintduration.value == value
                            ? Colors.blue
                            : Colors.black,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
