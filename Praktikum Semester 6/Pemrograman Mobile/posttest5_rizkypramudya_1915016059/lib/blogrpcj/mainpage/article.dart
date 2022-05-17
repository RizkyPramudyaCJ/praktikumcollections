import 'package:flutter/material.dart';
import 'package:posttest5_rizkypramudya_1915016059/constant.dart';
import 'package:posttest5_rizkypramudya_1915016059/home.dart';
import 'package:posttest5_rizkypramudya_1915016059/blogrpcj/mainpage/detailpagearticle.dart';

class Article extends StatefulWidget {
  const Article({Key? key}) : super(key: key);

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPageArticle(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
/*              children: [
                Text(
                  "Mungkinkah seseorang memiliki waifu/hazu tanpa harus menjadi penggemar anime?.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "https://medium.com/@rizkypramudyacj/mungkinkah-seseorang-memiliki-waifu-hazu-tanpa-harus-menjadi-penggemar-anime-84d158fad52e.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Pendapat Saya Tentang Selamanya.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "https://medium.com/@rizkypramudyacj/pendapat-saya-tentang-selamanya-f53f83f56447.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ],
*/
            ),
          ),
        ],
      ),
    );
  }
}
