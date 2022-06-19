import 'package:aplikasi_onlineshop/beranda.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_onlineshop/size_config.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Riwayat extends StatefulWidget {
  static String routeName = "riwayat";
  @override
  _RiwayatState createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  static FirebaseAuth auth = FirebaseAuth.instance;
  String email = auth.currentUser!.email.toString();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    // CollectionReference riwayat = firestore.collection("pendaftar").where('user', isEqualTo: userEmail);
    CollectionReference riwayat = firestore.collection("riwayat");
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: setHeight(200, MediaQuery.of(context).size.height),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFEFBE7),
                    Color(0xFFF9EBC8),
                  ],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(
                    left: 50,
                    right: 50,
                    top: setHeight(90, MediaQuery.of(context).size.height)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Riwayat Pembelanjaan",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "User : " + email,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: setWidth(30, MediaQuery.of(context).size.width),
                  ),
                  child: Expanded(
                    child: StreamBuilder<QuerySnapshot>(
                      stream:
                          riwayat.where('users', isEqualTo: email).snapshots(),
                      builder: (_, AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Text("Loading");
                        }
                        if (snapshot.hasData) {
                          return ListView(
                              shrinkWrap: true,
                              children: snapshot.data!.docs
                                  .map((e) => cardRiwayat(
                                        context,
                                        e.get('namaBarang'),
                                        e.get('totalBiaya'),
                                        e.get('opsiPengiriman'),
                                        e.get('metodePembayaran'),
                                      ))
                                  .toList());
                        } else {
                          return Text("Pembelanjaan tidak ditemukan");
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container cardRiwayat(BuildContext context, String namaBarang,
      String totalBiaya, String opsiPengiriman, String metodePembayaran) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
          bottom: setHeight(15, MediaQuery.of(context).size.height)),
      padding: EdgeInsets.symmetric(
        horizontal: setWidth(20, MediaQuery.of(context).size.width),
        vertical: setHeight(10, MediaQuery.of(context).size.height),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade900.withOpacity(0.2),
            blurRadius: 6.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: namaBarang,
                    style: TextStyle(
                      fontSize: setWidth(18, MediaQuery.of(context).size.width),
                      fontWeight: FontWeight.w700,
                      color: Colors.lightBlue.shade500,
                    ),
                  ),
                  TextSpan(
                    text: " - " + totalBiaya,
                    style: TextStyle(
                      fontSize: setWidth(12, MediaQuery.of(context).size.width),
                      color: Colors.lightBlue.shade400.withOpacity(0.8),
                    ),
                  ),
                ]),
              ),
            ],
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                opsiPengiriman,
                style: TextStyle(
                  fontSize: setWidth(12, MediaQuery.of(context).size.width),
                  color: Colors.lightBlue.shade700.withOpacity(0.6),
                ),
              ),
              Text(
                metodePembayaran,
                style: TextStyle(
                  fontSize: setWidth(12, MediaQuery.of(context).size.width),
                  color: Colors.blue.shade800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.lightBlue.shade400,
        ),
      ),
    );
  }
}
