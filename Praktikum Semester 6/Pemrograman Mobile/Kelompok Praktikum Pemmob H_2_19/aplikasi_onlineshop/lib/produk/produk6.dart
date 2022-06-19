import 'package:aplikasi_onlineshop/formbeli6.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class MyProduk6Page extends StatefulWidget {
  const MyProduk6Page({Key? key}) : super(key: key);

  @override
  State<MyProduk6Page> createState() => _MyProductPageState();
}

final List<String> imgList = [
  'assets/sumpit.jpg',
];

class _MyProductPageState extends State<MyProduk6Page> {
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

  Widget background(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      height: tinggi,
      width: lebar,
      color: Color(0xFFFEFBE7),
    );
  }

  Widget isi(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    List<int> list = [1, 2, 3, 4, 5];
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: tinggi / 2,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  // autoPlay: false,
                ),
                items: imgList
                    .map(
                      (item) => Container(
                        child: Center(
                          child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                            height: tinggi / 2,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Container(
              height: 100,
              width: lebar,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF9EBC8),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Sumpit Stainless Steel Lucu",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rp 300.000",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: lebar,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF9EBC8),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Kategori",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Warna",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Berat",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Stok",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Bahan",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Alat Makan",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Rainbow",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "30 Gram",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "30",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Stainless Steel",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 320,
              width: lebar,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF9EBC8),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Deskripsi",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "SUJEO adalah satu set alat makan dalam tradisi kuliner Korea yang terdiri dari sendok dan sumpit. \n\nKata sujeo berasal dari kata sutgarak (, sendok) dan jeotgarak (, sumpit)Biasa sering kita lihat di drama2 / film korea, dipakai untuk makan oleh artis2nya. \nBentuk yang unik ini cocok dijadikan sebagai dekorasi meja makan kita, dengan bahan stainless steal membuat sendok ini terlihat elegan. Makanan yang di ambil dengan sendok ini jadi terlihat lebih menarik dan lezat. \n\nBegitu juga dengan sumpit yang digunakan orang korea berbeda dengan sumpit orang indonesia, jika umumnya sumpit di indonesia berbentuk membulat dan berbahan dasar kayu, sumpit korea berbahan dasar stainless yang elegan cocok digunakan sebagai pemanis meja makan anda.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ],
    );
  }

  Widget bottomNav(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Positioned(
      top: tinggi - 50,
      child: Container(
        height: 50,
        width: lebar,
        decoration: BoxDecoration(
          color: Color(0xFFA0BCC2),
          borderRadius: BorderRadiusDirectional.circular(5),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "|",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 174,
              decoration: BoxDecoration(
                color: Color(0xFFDAE5D0),
                borderRadius: BorderRadiusDirectional.circular(5),
              ),
              child: TextButton(
                onPressed: () {
                  Get.to(() => const MyForm6());
                },
                child: Text(
                  "Beli Sekarang",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
