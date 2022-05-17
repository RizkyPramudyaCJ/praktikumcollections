import 'package:flutter/material.dart';
import 'package:posttest5_rizkypramudya_1915016059/blogrpcj/mainpage/art.dart';
import 'package:posttest5_rizkypramudya_1915016059/blogrpcj/mainpage/article.dart';
import 'package:posttest5_rizkypramudya_1915016059/blogrpcj/mainpage/poetry.dart';
import 'package:posttest5_rizkypramudya_1915016059/constant.dart';
import 'package:posttest5_rizkypramudya_1915016059/home.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  Widget RejuvenationModernMap() {
    return Container(
      width: 400,
      height: 300,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("Earth (3030 CE)-001 FHD.png"),
        ),
      ),
    );
  }

  int _navIndex = 0;
  List<Widget> _container = [
    new Article(),
    new Art(),
    new Poetry(),
  ];

/*  List<BottomNavigationBarItem> _navBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.newspaper),
      label: "Article",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.image),
      label: "Art",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.article),
      label: "Poetry",
    ),
  ];

  int _index = 0;

  List<Widget> _body = [
    Container(color: Colors.white),
    Container(color: Colors.white),
    Container(color: Colors.white),
  ];
*/

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
      /*body: _body.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _navBarItems,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),*/
    );
  }
}
