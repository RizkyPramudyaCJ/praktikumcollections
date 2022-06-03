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
  var nama = "".obs;
  var titel = "".obs;
  var comment = "".obs;
  final namaEditingController = TextEditingController();
  final titelEditingController = TextEditingController();
  final commentEditingController = TextEditingController();

  @override
  void onClose() {
    namaEditingController.dispose();
    titelEditingController.dispose();
    commentEditingController.dispose();
    super.onClose();
  }
}

class ListController extends GetxController {
  List<String> jenisKomentar = [
    "Kritik",
    "Tanggapan",
    "Lainnya",
  ];
  String commentCategory = "";
}
