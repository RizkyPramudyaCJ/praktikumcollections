import 'package:flutter/material.dart';
import 'package:posttest3_rizkypramudya_1915016059/constant.dart';

class WriteComment extends StatefulWidget {
  const WriteComment({Key? key}) : super(key: key);

  @override
  State<WriteComment> createState() => _WriteCommentState();
}

class _WriteCommentState extends State<WriteComment> {
  Widget callistoLogo() {
    return Container(
      width: 200,
      height: 200,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("CallistoLogo.png"),
        ),
      ),
    );
  }

  String nama = "";
  String title = "";
  String comment = "";

  List<String> jenisKomentar = [
    "Kritik",
    "Tanggapan",
    "Lainnya",
  ];
  String commentCategory = "";

  final namaController = TextEditingController();
  final titleController = TextEditingController();
  final commentController = TextEditingController();

  @override
  void dispose() {
    namaController.dispose();
    titleController.dispose();
    commentController.dispose();
    super.dispose();
  } //Buat hapus pas kelur aplikasi

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('RPCJ Blog'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: lebar,
                height: tinggi,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Palette.background1,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Hubungi Callisto Mapping melalui sosial media berikut :",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "YouTube : Callisto Mapping, Sans Dreemurr Pramudya",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "Instagram : CallistoMapping",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "Twitter : CallistoMapping",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Balik ke Laman Utama"),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color.fromARGB(66, 22, 16, 149),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Silakan isi komentar tentang situs blog pribadi ini",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    TextField(
                      controller: namaController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Nama kamu",
                        hintText: "Masukkan nama/nama pena kamu",
                        labelStyle: new TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    TextField(
                      //obscureText: true,
                      controller: titleController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Title kamu",
                        hintText: "Masukkan title yang kamu mau",
                        labelStyle: new TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    TextField(
                      //obscureText: true,
                      controller: commentController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Komentar kamu",
                        hintText:
                            "Isi komentar/ulasan/kritik yang ingin kamu keluarkan. Jangan menghina.",
                        labelStyle: new TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    for (var item in jenisKomentar)
                      ListTile(
                        leading: Radio(
                            value: item,
                            groupValue: commentCategory,
                            onChanged: (String? value) {
                              setState(() {
                                commentCategory = value!;
                              });
                            }),
                      ),
                    SizedBox(
                      width: 300,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            nama = namaController.text;
                            title = titleController.text;
                            comment = commentController.text;
                          });
                        },
                        child: Text("Tampilkan"),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color.fromARGB(66, 22, 16, 149),
                        ),
                      ),
                    ),
                    Text(
                      "Nama: $nama",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Title: $title",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Komentar: $comment",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Jenis Komentar:  $commentCategory",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
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
