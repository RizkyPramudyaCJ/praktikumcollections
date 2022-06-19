import 'package:aplikasi_onlineshop/beranda.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyForm6 extends StatelessWidget {
  const MyForm6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyFormPage6(),
    );
  }
}

class MyFormPage6 extends StatefulWidget {
  const MyFormPage6({Key? key}) : super(key: key);

  @override
  State<MyFormPage6> createState() => _MyFormPage6State();
}

class _MyFormPage6State extends State<MyFormPage6> {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference riwayat = firestore.collection("riwayat");
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Checkout",
      //     style: TextStyle(
      //       color: Colors.black,
      //     ),
      //   ),
      //   backgroundColor: Color(0xFFFEFBE7),
      // ),
      body: Stack(
        children: [
          isi(context),
          bottomNav(context),
        ],
      ),
    );
  }

  Widget bottomNav(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference riwayat = firestore.collection("riwayat");
    CollectionReference users = firestore.collection("users");
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Total Pembayaran",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Rp.337.000",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 174,
              decoration: BoxDecoration(
                color: Color(0xFFDAE5D0),
                borderRadius: BorderRadiusDirectional.circular(5),
              ),
              child: TextButton(
                onPressed: () async {
                  await ((value) => riwayat.add(
                        {
                          'namaBarang': "Sumpit Stainless Steel Lucu",
                          'totalBiaya': "Rp.337.000",
                          'opsiPengiriman': "Reguler",
                          'metodePembayaran':
                              "Transfer Bank - Bank BNI (Dicek Otomatis)",
                        },
                      ))(
                    (value) => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyBeranda())),
                  );
                },
                child: Text(
                  "Buat Pesanan",
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
    return Container(
      height: tinggi,
      width: lebar,
      color: Color(0xFFFEFBE7),
      child: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 140,
                width: lebar,
                color: Color(0xffDAE5D0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 100,
                        left: 10,
                      ),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.green.shade900,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 100),
                      child: Text(
                        "Alamat Pengiriman",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: lebar,
                color: Colors.white70,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                    top: 20,
                  ),
                  child: Text(
                    "Barang Ramah Lingkungan",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: lebar,
                color: Color(0xffDAE5D0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image(
                      image: AssetImage("assets/sumpit.jpg"),
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sumpit Stainless Steel\nLucu",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Rp. 300.000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
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
                height: 120,
                width: lebar,
                color: Color(0xffF9EBC8),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 230),
                      child: Text(
                        "Opsi Pengiriman",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.greenAccent.shade400,
                        ),
                      ),
                    ),
                    Text(
                      "______________________________________________________________",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Reguler",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 210,
                        ),
                        Text(
                          "Rp. 30.000",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Icon(Icons.navigate_next),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 110),
                      child: Text(
                        "Akan Diterima Pada Tanggal 20 - 25 Desember",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 250,
                width: lebar,
                color: Color(0xffDAE5D0),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: lebar,
                      child: Row(
                        children: [
                          Icon(
                            Icons.monetization_on_outlined,
                            color: Colors.green.shade800,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Metode Pembayaran",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text("Transfer Bank - Bank BNI\n(Dicek Otomatis)"),
                          Icon(Icons.navigate_next),
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      width: lebar - 20,
                      padding: EdgeInsets.all(7),
                      color: Color(0xffF9EBC8),
                      child: Text(
                        "Pakai DANA, bebas biaya pengantaran!",
                        style: TextStyle(
                          color: Color.fromARGB(255, 229, 183, 67),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text("Subtotal untuk Produk"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Subtotal Pengiriman"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Biaya Penanganan"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Total Pembayaran",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 140,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text("Rp.300.000"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Rp.30.000"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Rp.7.000"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Rp.337.000",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
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
