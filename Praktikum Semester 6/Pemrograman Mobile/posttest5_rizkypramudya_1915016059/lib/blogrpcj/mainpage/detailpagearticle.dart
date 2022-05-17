import 'package:flutter/material.dart';
import 'package:posttest5_rizkypramudya_1915016059/constant.dart';
import 'package:posttest5_rizkypramudya_1915016059/home.dart';
import 'package:posttest5_rizkypramudya_1915016059/blogrpcj/mainpage/article.dart';

class DetailPageArticle extends StatelessWidget {
  const DetailPageArticle({Key? key}) : super(key: key);

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
                height: tinggi * 0.4,
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Tentang Selamanya",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "Selamanya? Apa yang dimaksud dengan selamanya? Kata ini sering dipakai di mana-mana. Baik di Facebook, Instagram, WhatsApp, Twitter, bahkan di Quora dan media sekalipun memakai kata tersebut. Silakan baca selanjutnya di Medium Callisto di sini : @rizkypramudyacj",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
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
