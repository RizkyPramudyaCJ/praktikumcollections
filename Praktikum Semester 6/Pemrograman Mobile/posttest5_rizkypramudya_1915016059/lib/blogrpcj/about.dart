import 'package:flutter/material.dart';
import 'package:posttest5_rizkypramudya_1915016059/constant.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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

  final snekku = SnackBar(
    content: Text("Eak, kena prank kan?"),
    duration: Duration(seconds: 4),
    padding: EdgeInsets.all(10),
    backgroundColor: Colors.purple,
  );

  Future<dynamic> CustomAlert(BuildContext context, String peringatan) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            "Selamat, anda diprank!",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          content: Text(peringatan),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Paham"),
            ),
          ],
        );
      },
    );
  }

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
                      "Tentang Callisto Mapping",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "Callisto Mapping merupakan seorang storymapper yang membuat cerita yang mana setiap negara berbicara satu sama lain dalam bentuk peta dan 4X/Grand Strategy. Serial yang telah ia kerjakan adalah Alternate Future of Gak Jelas (Series candaan), Alternate Future of Four Worlds (Dibatalkan), Trovidia: Origins, Trovidia: Interdimensional Travellings (Dibatalkan), Life of Swamboja (Dibatalkan), AFOW: Mariglenn (Mapfic, dibatalkan), Rejuvenation (Formerly Stranded, sedang dikerjakan). Saat ini, ia sedang mengerjakan Rejuvenation yang bercerita tentang beberapa karakter yang terdampar ke dunia baru pasca-kemunduran umat manusia dan bertujuan untuk membentuk peradaban manusia baru serta mencari penyebab hancurnya dan detail peradaban manusia lama. Namun, series ini juga termasuk mapfic (fanfic dalam storymapping) karena terdapat karakter dan unsur dari game dan media lain. Contoh: Lisa Minci dan Lumine dari Genshin Impact, Benito dan Gregar Fletcher dari Naev, teknologi dari Stellaris dan Hades' Star, serta karakter sejarah dari abad-abad sebelumnya.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 300,
                      child: OutlinedButton(
                        child: Text("Ini snek makanannya! Silakan dicoba!"),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(snekku);
                        },
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color.fromARGB(66, 22, 16, 149),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: OutlinedButton(
                        child: Text("Tampilkan Alert"),
                        onPressed: () {
                          CustomAlert(context, "Silakan dicoba lagi");
                        },
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color.fromARGB(66, 22, 16, 149),
                        ),
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
