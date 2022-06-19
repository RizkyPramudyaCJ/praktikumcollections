import 'package:aplikasi_onlineshop/profil.dart';
import 'package:aplikasi_onlineshop/settings.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

import 'history.dart';
import 'produk/produk1.dart';
import 'produk/produk2.dart';
import 'produk/produk3.dart';
import 'produk/produk4.dart';
import 'produk/produk5.dart';
import 'produk/produk6.dart';

class MyBeranda extends StatelessWidget {
  const MyBeranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBerandaPage(),
    );
  }
}

class MyBerandaPage extends StatefulWidget {
  const MyBerandaPage({Key? key}) : super(key: key);

  @override
  State<MyBerandaPage> createState() => _MyBerandaPageState();
}

final List<String> imgList = [
  'assets/diskon.jpeg',
  'assets/gambar.jpeg',
  'assets/gebyar.jpeg',
  'assets/gratis.jpeg',
  'assets/promo.jpeg',
  'assets/promosi.jpeg',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.asset(item, fit: BoxFit.cover, width: 300.0),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      // child: Text(
                      //   'No. ${imgList.indexOf(item)} image',
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     fontSize: 20.0,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ))
    .toList();

class _MyBerandaPageState extends State<MyBerandaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          background(context),
          isi(context),
          bottomNav(context),
        ],
      ),
    );
  }

  Widget bottomNav(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Positioned(
      left: 15,
      top: tinggi - 65,
      child: Container(
        height: 50,
        width: lebar - 30,
        decoration: BoxDecoration(
          color: Color(0xFFA0BCC2),
          borderRadius: BorderRadiusDirectional.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                Get.to(() => MyProfile());
              },
              icon: Icon(Icons.person),
            ),
            IconButton(
              onPressed: () {
                Get.to(() => MySettings());
              },
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
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

  Widget product(
      BuildContext context, String gambar, String produk, String harga) {
    return Container(
      height: 230,
      width: 150,
      decoration: BoxDecoration(
        color: Color(0xFFDAE5D0),
        borderRadius: BorderRadiusDirectional.circular(5),
      ),
      child: Column(
        children: <Widget>[
          Spacer(
            flex: 1,
          ),
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(5),
              image: DecorationImage(
                image: AssetImage(gambar),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            produk,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            harga,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }

  Widget isi(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 75,
              width: 195,
              padding: EdgeInsets.all(19),
              decoration: BoxDecoration(
                color: Color(0xFFA0BCC2),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Text(
                "Barang Ramah Lingkungan",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => Riwayat());
              },
              child: Container(
                height: 75,
                width: 70,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFDAE5D0),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/history.png"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 280),
          child: Container(
            height: 30,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xFFF9EBC8),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Text(
              " Hot News",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: imageSliders,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 260),
          child: Container(
            height: 30,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xFFF9EBC8),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Text(
              " Our Products",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => MyProduk2Page());
              },
              child: product(context, 'assets/garpu.jpg',
                  "Stainless Steel Sendok Garpu Set", "Rp.50.000"),
            ),
            Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => MyProduk1Page());
              },
              child: product(context, 'assets/tumbler2.jpg',
                  "Botol Minum Stainless 250 ML", "Rp.110.000"),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => MyProduk3Page());
              },
              child: product(context, 'assets/lunchbox.JPG',
                  "Lunch Box Set Bedebest", "Rp.200.000"),
            ),
            Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => MyProduk4Page());
              },
              child: product(context, 'assets/sedotan.jpg',
                  "Sedotan Stainless Steel Murah", "Rp.90.000"),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => MyProduk5Page());
              },
              child: product(context, 'assets/totebag.jpg',
                  "Tas Belanja Ramah Lingkungan", "Rp.25.000"),
            ),
            Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => MyProduk6Page());
              },
              child: product(context, 'assets/sumpit.jpg',
                  "Sumpit Stainless Steel Lucu", "Rp.300.000"),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
        SizedBox(
          height: 80,
        )
      ],
    );
  }
}
