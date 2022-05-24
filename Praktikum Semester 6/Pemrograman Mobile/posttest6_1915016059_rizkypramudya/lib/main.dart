import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_1915016059_rizkypramudya/home.dart';
import 'package:posttest6_1915016059_rizkypramudya/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RPCJ Blog',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
