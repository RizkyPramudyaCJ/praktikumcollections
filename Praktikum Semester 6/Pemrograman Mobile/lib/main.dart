import 'package:flutter/material.dart';
import 'package:pertemuan2_1915016059/home.dart';

void main() {
  runApp(const MyApp());
}

// assets

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
