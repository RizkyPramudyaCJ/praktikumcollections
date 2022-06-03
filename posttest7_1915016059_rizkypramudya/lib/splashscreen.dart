import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:posttest7_1915016059_rizkypramudya/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    pembukaanAplikasi();
  }

  pembukaanAplikasi() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      // ignore: prefer_const_constructors
      Get.off(() => Home());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "CallistoLogo.png",
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 2,
        ),
      ),
    );
  }
}
