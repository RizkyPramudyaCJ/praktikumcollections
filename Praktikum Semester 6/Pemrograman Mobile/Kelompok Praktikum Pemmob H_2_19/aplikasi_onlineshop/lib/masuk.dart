import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:aplikasi_onlineshop/daftar.dart';
import 'package:aplikasi_onlineshop/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import 'beranda.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landing Page Pengiriman Barang',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(backgroundColor: Color.fromARGB(255, 255, 46, 31))),
      debugShowCheckedModeBanner: false,
      home: MyLoginPage(
        key: key,
      ),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  bool showSpinner = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  VideoPlayerController _controller =
      VideoPlayerController.asset("videos/latarVid.mp4");

  @override
  void initState() {
    super.initState();
    _controller
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("users");

    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
          body: Stack(
        children: <Widget>[
          background(context),
          Center(
            child: Container(
              height: tinggi - 370,
              width: lebar - 100,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Column(
                children: <Widget>[
                  Text("Login",
                      style:
                          TextStyle(fontFamily: "BetterGrade", fontSize: 80)),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 30,
                    width: 220,
                    child: TextField(
                      decoration: new InputDecoration(
                        border: UnderlineInputBorder(),
                        hoverColor: Colors.grey,
                        focusColor: Colors.grey,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        hintText: 'Email',
                        hintStyle: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      controller: emailController,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 30,
                    width: 220,
                    child: TextField(
                      obscureText: true,
                      decoration: new InputDecoration(
                        border: UnderlineInputBorder(),
                        hoverColor: Colors.grey,
                        focusColor: Colors.grey,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        hintText: 'Password',
                        hintStyle: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      controller: passwordController,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 150,
                    height: 45,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 219, 135, 135),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () async {
                        // ! Error Handling
                        if (emailController.text.length != 0 &&
                            passwordController.text.length >= 6) {
                          setState(
                            () {
                              showSpinner = true;
                            },
                          );
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text)
                              .then((value) => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage(
                                            title: '',
                                          ))));
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text("Error"),
                                  content: Text(
                                      "Email tidak boleh kosong & Password kurang dari 6 huruf & email & password salah"),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text("OK"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    )
                                  ],
                                );
                              });
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 40,
                    width: 220,
                    child: Row(
                      children: <Widget>[
                        Spacer(
                          flex: 1,
                        ),
                        Text("Belum punya akun ?"),
                        TextButton(
                          onPressed: () {
                            Get.to(() => const MyRegister());
                          },
                          child: Text(
                            "Daftar",
                            style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  Widget latarVideo(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      height: tinggi,
      width: lebar,
      child: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          : Container(),
    );
  }

  Widget background(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      height: tinggi,
      width: lebar,
      color: Color(0xFFDAE5D0),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
