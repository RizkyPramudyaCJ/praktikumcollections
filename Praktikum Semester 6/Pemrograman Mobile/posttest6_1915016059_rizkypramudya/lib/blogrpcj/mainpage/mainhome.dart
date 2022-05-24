import 'package:flutter/material.dart';
import 'package:posttest6_1915016059_rizkypramudya/blogrpcj/mainpage/art.dart';
import 'package:posttest6_1915016059_rizkypramudya/blogrpcj/mainpage/article.dart';
import 'package:posttest6_1915016059_rizkypramudya/blogrpcj/mainpage/poetry.dart';
import 'package:posttest6_1915016059_rizkypramudya/constant.dart';
import 'package:posttest6_1915016059_rizkypramudya/home.dart';
import 'package:get/get.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _navIndex = 0;
  List<Widget> _container = [
    new Article(),
    new Art(),
    new Poetry(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_navIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.background1,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _navIndex = index;
          });
        },
        currentIndex: _navIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.newspaper,
              color: Palette.background1,
            ),
            icon: new Icon(
              Icons.newspaper,
              color: Colors.grey,
            ),
            label: "Article",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.image,
              color: Palette.background1,
            ),
            icon: new Icon(
              Icons.image,
              color: Colors.grey,
            ),
            label: "Art",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.article,
              color: Palette.background1,
            ),
            icon: new Icon(
              Icons.article,
              color: Colors.grey,
            ),
            label: "Poetry",
          ),
        ],
      ),
    );
  }
}
