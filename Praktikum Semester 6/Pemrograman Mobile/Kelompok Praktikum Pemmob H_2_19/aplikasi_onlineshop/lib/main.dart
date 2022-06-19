import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import 'produk/produk2.dart';
import 'produk/produk3.dart';
import 'produk/produk4.dart';
import 'produk/produk5.dart';
import 'produk/produk6.dart';

import 'splash.dart';
import 'beranda.dart';
import 'daftar.dart';
import 'masuk.dart';
import 'produk/produk1.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          background(context),
          backgroundCircle(context),
          isi(context)
        ],
      ),
    );
  }

  Widget isi(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 200),
          child: Container(
            height: 170,
            width: 170,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage("assets/logoW.png")),
            ),
          ),
        ),
        SizedBox(
          height: 95,
        ),
        Text(
          " Dear User ,",
          style: TextStyle(
            fontSize: 45,
            fontFamily: "BetterGrade",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "   this application is dedicated to the movement to protect \n   the earth, here we present the work of the nation's \n  children, namely products derived from recycled \n  materials in order to cope with global warming",
          style: TextStyle(
            fontSize: 40,
            fontFamily: "BetterGrade",
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          children: <Widget>[
            Text(
              " Our Regrads\n Barang Ramah Lingkungan",
              style: TextStyle(
                fontSize: 36,
                fontFamily: "BetterGrade",
              ),
            ),
            SizedBox(
              width: 40,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyBeranda(),
                  ),
                );
              },
              child: Text("Go To Aplication"),
            ),
          ],
        )
      ],
    );
  }

  Widget background(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      height: tinggi,
      width: lebar,
      color: Color(0xFFFEFBE7),
    );
  }

  Widget backgroundCircle(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Positioned(
      top: -70,
      left: -70,
      child: Container(
        height: 330,
        width: 330,
        decoration: BoxDecoration(
          color: Color(0xFFA0BCC2),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
