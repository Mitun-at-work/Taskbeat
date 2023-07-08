import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepController extends GetxController {
  var isCelebrting = false.obs;
  var taskTitle = "Daily Walk".obs;
  var title = "Enter New Title".obs;
  var isStarted = 0;
  var count = 0.obs;
  var space = "".obs;
  var isGlow = 0.obs;
  //
  OvalBorder startedBorder = const OvalBorder(
    eccentricity: 0.9,
    side: BorderSide(
      width: 10,
      color: Colors.white,
    ),
  );

  //
  void updateCounter() {
    count += 1;
  }

  void triggerAcion() {
    for (int i = 0; i < isStarted + 1; i++) {
      space;
    }
  }

  void startCounter() {
    while (isStarted != 1) {
      isStarted += 1;
    }
  }

  void updateOne() {
    count += 1;
  }

  void resetCounter() {
    while (count.toInt() != 0) {
      count -= 1;
    }

    while (isStarted != 0) {
      isStarted -= 1;
    }
  }

  void updateTitle() {
    update();
  }
}
