import 'package:aplikasi_onlineshop/beranda.dart';
import 'package:aplikasi_onlineshop/settings.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
}

Widget bottomNav(BuildContext context) {
  var tinggi = MediaQuery.of(context).size.height;
  var lebar = MediaQuery.of(context).size.width;
  return Positioned(
    left: 15,
    top: tinggi - 45,
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
            onPressed: () {
              Get.to(() => MyBeranda());
            },
            icon: Icon(Icons.home),
          ),
          IconButton(
            onPressed: () {},
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

Widget isi(BuildContext context) {
  var tinggi = MediaQuery.of(context).size.height;
  var lebar = MediaQuery.of(context).size.width;
  return ListView(
    children: <Widget>[
      SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text('Clara'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.man,
                  color: Colors.black,
                ),
                title: Text('Perempuan'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.fence,
                  color: Colors.black,
                ),
                title: Text('1'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.alternate_email,
                  color: Colors.black,
                ),
                title: Text('clara@gmail.com'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                title: Text('082181817261'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                title: Text('Jalan Semeru Gang Ujang No 18 RT 21'),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
