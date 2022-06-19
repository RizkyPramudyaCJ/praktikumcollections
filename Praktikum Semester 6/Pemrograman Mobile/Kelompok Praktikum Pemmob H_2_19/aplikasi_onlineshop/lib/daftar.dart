import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class MyRegister extends StatelessWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ramah Lingkungan',
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(backgroundColor: Color.fromARGB(255, 255, 46, 31))),
      home: MyRegisterPage(key: key),
    );
  }
}

class MyRegisterPage extends StatefulWidget {
  const MyRegisterPage({Key? key}) : super(key: key);

  @override
  State<MyRegisterPage> createState() => _MyLoginPageState();
}

enum Gender { LakiLaki, Perempuan }

class _MyLoginPageState extends State<MyRegisterPage> {
  bool showSpinner = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nomorTeleponController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController namaController = TextEditingController();

  VideoPlayerController _controller =
      VideoPlayerController.asset("videos/latarVid.mp4");
  String date = "Tanggal Lahir";
  DateTime selectedDate = DateTime.now();
  Gender? _gender = Gender.LakiLaki;
  final number = TextEditingController();

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
                height: tinggi - 100,
                width: lebar - 100,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Daftar Akun",
                          style: TextStyle(
                            fontFamily: "BetterGrade",
                            fontSize: 80,
                          ),
                        ),
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
                                    left: 15, bottom: 11, top: 1, right: 15),
                                hintText: 'Nama'),
                            controller: namaController,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        /*Container(
                          height: 30,
                          width: 220,
                          child: TextField(
                            decoration: new InputDecoration(
                                border: UnderlineInputBorder(),
                                hoverColor: Colors.grey,
                                focusColor: Colors.grey,
                                contentPadding: EdgeInsets.only(
                                    left: 15, bottom: 11, top: 1, right: 15),
                                //hintText: "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
                                labelText: date),
                            readOnly: true,
                            onTap: () async {
                              DateTime? selected = await showDatePicker(
                                context: context,
                                initialDate: selectedDate,
                                firstDate: DateTime(2010),
                                lastDate: DateTime(2025),
                              );
                              if (selected != null && selected != selectedDate)
                                setState(() {
                                  selectedDate = selected;
                                  date =
                                      "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
                                });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          title: const Text('Laki - Laki'),
                          leading: Radio<Gender>(
                            value: Gender.LakiLaki,
                            groupValue: _gender,
                            onChanged: (Gender? value) {
                              setState(() {
                                _gender = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('Perempuan'),
                          leading: Radio<Gender>(
                            value: Gender.Perempuan,
                            groupValue: _gender,
                            onChanged: (Gender? value) {
                              setState(() {
                                _gender = value;
                              });
                            },
                          ),
                        ),*/
                        Container(
                          height: 30,
                          width: 220,
                          child: TextField(
                            controller: number,
                            decoration: new InputDecoration(
                                border: UnderlineInputBorder(),
                                hoverColor: Colors.grey,
                                focusColor: Colors.grey,
                                contentPadding: EdgeInsets.only(
                                    left: 15, bottom: 11, top: 1, right: 15),
                                hintText: 'No Hp'),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
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
                                    left: 15, bottom: 11, top: 1, right: 15),
                                hintText: 'Email'),
                            controller: emailController,
                          ),
                        ),
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
                                    left: 15, bottom: 11, top: 1, right: 15),
                                hintText: 'Password'),
                            controller: passwordController,
                          ),
                        ),
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
                                    left: 15, bottom: 11, top: 1, right: 15),
                                hintText: 'Alamat'),
                            controller: alamatController,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: 150,
                          height: 45,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 219, 135, 135),
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
                                    .createUserWithEmailAndPassword(
                                        email: emailController.text,
                                        password: passwordController.text)
                                    .then(
                                      (value) => users.add(
                                        {
                                          'nama': namaController.text,
                                          'noTelp': int.tryParse(number.text),
                                          'email': emailController.text,
                                          'password': passwordController.text,
                                          'alamat': alamatController.text,
                                        },
                                      ),
                                    )
                                    .then((value) => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyHomePage(
                                                  title: '',
                                                ))));

                                namaController.text = '';
                                number.text = '';
                                emailController.text = '';
                                passwordController.text = '';
                                alamatController.text = '';
                                /*((value) => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyHomePage(
                                                  title: '',
                                                ))))*/
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Error"),
                                        content: Text(
                                            "Email tidak boleh kosong & Password kurang dari 6 huruf"),
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
                            /*{
                              FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: emailController.text,
                                      password: passwordController.text)
                                  .then((value) {
                                print("Akun terbuat");
                                Get.to(() => MyHomePage(
                                      title: '',
                                    ));
                              }).onError((error, stackTrace) {
                                print("Error ${error.toString()}");
                              });
                            },*/
                            child: Text(
                              "Daftar",
                              style: TextStyle(
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ],
                )),
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
    namaController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
    _controller.dispose();
  }
}
