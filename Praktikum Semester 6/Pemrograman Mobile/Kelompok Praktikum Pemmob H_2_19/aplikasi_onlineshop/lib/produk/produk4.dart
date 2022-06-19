import 'package:aplikasi_onlineshop/formbeli4.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class MyProduk4Page extends StatefulWidget {
  const MyProduk4Page({Key? key}) : super(key: key);

  @override
  State<MyProduk4Page> createState() => _MyProductPageState();
}

final List<String> imgList = [
  'assets/sedotan.jpg',
];

class _MyProductPageState extends State<MyProduk4Page> {
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
                    "Sedotan Stainless Steel Murah",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rp 90.000",
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
                        "Jumlah",
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
                        "Alat Minum",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Silver",
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
                        "4 Pcs",
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
                    "Sampah Sedotan Plastik Peringkat ke-5 Penyumbang Sampah Plastik di Dunia. \nYuk Lindungi bumi kita dengan mengurangi penggunaan sedotan plastik yang hanya sekali pakai. \nStainless straw terdiri dari 5 in 1 : \n1 elbow straw (21.2x0.6 cm) \n1 small straight straw (21.5x0.6 cm) \n1 big straight straw (21.5x1.2 cm) \n1 brush1 pouch ",
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
                  Get.to(() => const MyForm4());
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
