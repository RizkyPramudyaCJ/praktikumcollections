import 'package:flutter/material.dart';
import 'package:posttest6_1915016059_rizkypramudya/constant.dart';
import 'package:posttest6_1915016059_rizkypramudya/home.dart';
import 'package:posttest6_1915016059_rizkypramudya/blogrpcj/mainpage/detailpagearticle.dart';
import 'package:get/get.dart';

class Article extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("RPCJ Blog"),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: [
          Container(
            width: lebar,
            height: tinggi,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  elevation: 8.0,
                  margin:
                      new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Palette.background2,
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      leading: Container(
                        padding: EdgeInsets.only(right: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                            right: new BorderSide(
                                width: 1.0, color: Colors.white24),
                          ),
                        ),
                        child: Icon(
                          Icons.autorenew,
                          color: Colors.black,
                        ),
                      ),
                      title: Text(
                        "Tentang Selamanya",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Row(
                        children: <Widget>[
                          Text(
                            "Apa yang dimaksud dengan selamanya?",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Get.to(DetailPageArticle());
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
