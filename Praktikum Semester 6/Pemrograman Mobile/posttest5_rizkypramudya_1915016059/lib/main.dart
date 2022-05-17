import 'package:flutter/material.dart';
import 'package:posttest5_rizkypramudya_1915016059/home.dart';
import 'package:posttest5_rizkypramudya_1915016059/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RPCJ Blog',
      theme: ThemeData(
//        primaryColor: Colors.fromARGB(255, 146, 33, 167),
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // ignore: prefer_const_constructors
      home: SplashScreen(),
    );
  }
}
