import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';

class Variables extends GetxController {
  RxInt number = 0.obs;
  increment() => number++;

  RxBool checked = false.obs;
  toggleChecked() => checked.toggle();

  RxBool isCheck = true.obs;
  RxList<String> sound = ['Bike wheel', 'Fast bike wheel', 'Crickets'].obs;
  RxString sounds = 'Bike wheel'.obs;

  RxDouble spintduration = 30.0.obs;
  RxList values = [
    10,
    30,
    50,
    80,
    100,
    120,
    150,
    180,
    200,
  ].obs;

  final player = AudioPlayer();
  var isPlaying = false.obs;
  RxDouble volumePercentage = 50.0.obs; // Volume in percentage

  void playPause(String url, double volumePercent) async {
    double volumeDecimal =
        volumePercent / 100.0; // Convert percentage to decimal
    if (isPlaying.value) {
      await player.pause();
      isPlaying(false);
    } else {
      await player.setVolume(volumeDecimal); // Set the volume
      await player
          .play(UrlSource(url)); // Play audio directly from the URL string
      isPlaying(true);
    }
  }

  TextEditingController textEditingController = TextEditingController();

  RxList<String> names =
      ['Grace', 'Henry', 'Parvez,', 'Ivy', 'Jack', 'Kate', 'Liam'].obs;
  RxInt currentIndex = 0.obs;
}
