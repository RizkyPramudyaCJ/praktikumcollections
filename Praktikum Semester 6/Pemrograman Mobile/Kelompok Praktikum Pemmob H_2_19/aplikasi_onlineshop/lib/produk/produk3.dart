import 'package:aplikasi_onlineshop/formbeli3.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class MyProduk3Page extends StatefulWidget {
  const MyProduk3Page({Key? key}) : super(key: key);

  @override
  State<MyProduk3Page> createState() => _MyProductPageState();
}

final List<String> imgList = [
  'assets/lunchbox.JPG',
];

class _MyProductPageState extends State<MyProduk3Page> {
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
                    "Lunch Box Set Bedebest",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rp 200.000",
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
                        "Alat Makan",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Abu-Abu",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "100 Gram",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "2 Pcs",
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
                    "Stainless steel 304 = BPA-free & baik utk kesehatan. \nSekatan 4 kompartemennya sangat ideal : \n1 utk nasi & 3 utk lauk  \nSekatannya bisa dicopot jadi bagian bawah bisa dituang air panas supaya lauk di atas sekatan menjadi lebih hangat \nJuga gampang dibersihkan & anti-karat jadi bisa tahan lebih lama dari anak Anda baru masuk SD sampai dia lulus Universitas (jika dirawat dgn baik",
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
                  Get.to(() => const MyForm3());
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
