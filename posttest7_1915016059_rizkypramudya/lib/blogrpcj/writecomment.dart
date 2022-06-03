// ignore_for_file: unnecessary_string_interpolations, unnecessary_new, duplicate_ignore

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:posttest7_1915016059_rizkypramudya/constant.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016059_rizkypramudya/controller.dart';

class WriteComment extends StatefulWidget {
  const WriteComment({Key? key}) : super(key: key);

  @override
  State<WriteComment> createState() => _WriteCommentState();
}

class _WriteCommentState extends State<WriteComment> {
  Widget callistoLogo() {
    return Container(
      width: 200,
      height: 200,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("CallistoLogo.png"),
        ),
      ),
    );
  }

  final TextController tec = Get.put(TextController());
  final ListController lt = Get.put(ListController());

  List<String> jenisKomentar = [
    "Kritik",
    "Tanggapan",
    "Lainnya",
  ];
  String commentCategory = "";

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference comments = firestore.collection("comments");
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('RPCJ Blog'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: lebar,
                height: tinggi,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Palette.background1,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.back();
                        },
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor:
                              const Color.fromARGB(66, 22, 16, 149),
                        ),
                        child: const Text("Balik ke Laman Utama"),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Silakan isi komentar tentang situs blog pribadi ini",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    TextField(
                      controller: tec.namaEditingController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: "Nama kamu",
                        hintText: "Masukkan nama/nama pena kamu",
                        // ignore: prefer_const_constructors, unnecessary_new
                        labelStyle: new TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    TextField(
                      //obscureText: true,
                      controller: tec.titelEditingController,
                      // ignore: duplicate_ignore
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: "Title kamu",
                        hintText: "Masukkan title yang kamu mau",
                        // ignore: unnecessary_new, prefer_const_constructors
                        labelStyle: new TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    TextField(
                      //obscureText: true,
                      controller: tec.commentEditingController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: "Komentar kamu",
                        hintText:
                            "Isi komentar/ulasan/kritik yang ingin kamu keluarkan. Jangan menghina.",
                        // ignore: prefer_const_constructors
                        labelStyle: new TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    for (var item in jenisKomentar)
                      ListTile(
                        leading: Radio(
                            value: item,
                            groupValue: commentCategory,
                            onChanged: (String? value) {
                              setState(() {
                                commentCategory = value!;
                              });
                            }),
                      ),
                    SizedBox(
                      width: 300,
                      child: OutlinedButton(
                        onPressed: () {
                          tec.nama(tec.namaEditingController.text);
                          tec.titel(tec.titelEditingController.text);
                          tec.comment(tec.commentEditingController.text);
                          Get.to(() => SecondPage());
                        },
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor:
                              const Color.fromARGB(66, 22, 16, 149),
                        ),
                        child: const Text("Buka halaman untuk menampilkan"),
                      ),
                    ),
                    Text(
                      "Jenis Komentar:  $commentCategory",
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final TextController tec = Get.find();

  SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('RPCJ Blog'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: lebar,
                height: tinggi,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Palette.background1,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Obx(
                      () => Text('Nama: ${tec.nama.value}'),
                    ),
                    Obx(
                      () => Text('Titel: ${tec.titel.value}'),
                    ),
                    Obx(
                      () => Text('Comment: ${tec.comment.value}'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
