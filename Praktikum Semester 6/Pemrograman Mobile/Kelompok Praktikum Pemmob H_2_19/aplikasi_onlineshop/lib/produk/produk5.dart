import 'package:aplikasi_onlineshop/formbeli5.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class MyProduk5Page extends StatefulWidget {
  const MyProduk5Page({Key? key}) : super(key: key);

  @override
  State<MyProduk5Page> createState() => _MyProductPageState();
}

final List<String> imgList = [
  'assets/totebag.jpg',
];

class _MyProductPageState extends State<MyProduk5Page> {
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
                    "Tas Belanja Ramah Lingkungan",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rp 25.000",
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
                        "Ukuran",
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
                        "Tas",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Cream",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "50 Gram",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "40 x 35 cm",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Kanvas Premiun",
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
                    "TOTE BAG RAMAH LINGKUNGAN.\nMaterial Kanvas Premium \nUk. 40 x 35 cm (memanjang ke bawah), \nWarna Cream \nTidak ada resleting \nRingan dan cocok dibawa kemanapun",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
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
                  Get.to(() => const MyForm5());
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
