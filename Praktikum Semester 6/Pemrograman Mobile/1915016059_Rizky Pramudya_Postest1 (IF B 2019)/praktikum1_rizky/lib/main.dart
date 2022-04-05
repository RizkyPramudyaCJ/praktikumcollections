import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Postest1 Rizky Pramudya"),
        backgroundColor: const Color.fromARGB(255, 53, 21, 11),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: lebar,
                height: tinggi / 8,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(
                    width: 10,
                    color: Colors.white70,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  "Rizky Pramudya - IF B 19 - 1915016059",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: lebar / 2,
                height: tinggi / 2,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    width: 10,
                    color: Colors.white70,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  "Seorang mahasiswa yang kuliah di Universitas Mulawarman yang juga menyukai worldbuilding yang masif dengan karakter yang ia sukai, biasanya karakter Waifunya yang keibuan/soft mommy dom",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: lebar / 2,
                height: tinggi / 2,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  border: Border.all(
                    width: 10,
                    color: Colors.white70,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  "Lisa Minci adalah waifu yang ia sukai. Ia merupakan karakter dari gim Genshin Impact. Penampilan wajahnya yang cantik, sifatnya yang lembut dan keibuan, dan pintar. Ia memakai baju berwarna ungu dengan topi penyihir ungu serta bunga mawar ungu di beberapa bagian pakaian",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: lebar,
                height: tinggi / 4,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  border: Border.all(
                    width: 10,
                    color: Colors.white70,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  "Walaupun memiliki waifu, tapi ia lebih menyukai gim strategi raya seperti Stellaris. Karena itu dapat membantu ia untuk berimajinasi dan membuat cerita storymapping terkait waifu, karakter, dan peradabannya dengan beberapa referensi dan lagu epik",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
