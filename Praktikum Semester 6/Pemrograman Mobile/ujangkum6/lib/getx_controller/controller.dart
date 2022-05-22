import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;
  increment() => counter++;
}

class SwitchController extends GetxController {
  var switchValue = false.obs;
  //setValue(newValue) => switchValue.value = newValue;
  //atau
  setValue(newValue) => switchValue(newValue!);
}

class TextController extends GetxController {
  var name = "".obs;
  final nameEditingController = TextEditingController();

  @override
  void onClose() {
    nameEditingController.dispose();
    super.onClose();
  }
}
