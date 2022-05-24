import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_1915016059_rizkypramudya/constant.dart';
import 'package:posttest6_1915016059_rizkypramudya/blogrpcj/writecomment.dart';
import 'package:posttest6_1915016059_rizkypramudya/blogrpcj/frontpage.dart';
import 'package:posttest6_1915016059_rizkypramudya/blogrpcj/about.dart';
import 'package:posttest6_1915016059_rizkypramudya/blogrpcj/mainpage/mainhome.dart';

class Home extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Color.fromARGB(255, 150, 33, 170),
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
                    callistoLogo(),
                    const Text(
                      "Selamat datang di blog pribadi Rizky Pramudya",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 300,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(Frontpage());
                        },
                        child: Text("Laman Depan"),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color.fromARGB(66, 22, 16, 149),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(About());
                        },
                        child: Text("Tentang"),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color.fromARGB(66, 22, 16, 149),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(WriteComment());
                        },
                        child: Text("Hubungi & Ulasan"),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color.fromARGB(66, 22, 16, 149),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(MainHome());
                        },
                        child: Text("Bacalah sekarang"),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color.fromARGB(66, 22, 16, 149),
                        ),
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
