import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*Widget fontDasar() {
    return Text(
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }*/

  //int angka = 0;
  String nama = "";
  String waifu = "";
  bool? isHaveWaifu = false;

  List<String> jenisKelamin = [
    "Laki-laki",
    "Perempuan",
  ];
  String birthSex = "";

  final namaController = TextEditingController();
  final waifuController = TextEditingController();

  @override
  void dispose() {
    namaController.dispose();
    waifuController.dispose();
    super.dispose();
  } //Buat hapus pas kelur aplikasi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pertemuan 3"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Nama: $nama <---> Waifu: $waifu",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Jenis Kelamin:  $birthSex",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Saya ${isHaveWaifu! ? "Punya" : "Tidak Punya"}",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            /*Text(
              "Angka: $angka",
              style: TextStyle(
                fontSize: 20,
              ),
            ),*/
            /*TextButton(
              onPressed: () {
                setState(() {
                  angka++;
                });
                print(angka);
              },
              child: Text("Tamvah"),
              style: TextButton.styleFrom(
                primary: Colors.purple,
                backgroundColor: Color.fromARGB(66, 22, 16, 149),
              ),
            ),*/
            /*ElevatedButton(
              onPressed: () {},
              child: Text("TombolElevasi"),
              style: ElevatedButton.styleFrom(primary: Colors.purple),
            ),*/
            TextField(
              controller: namaController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nama kamu",
                hintText: "Nama lu masukin ye bro, kalo nggak nanti resiko",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              //obscureText: true,
              controller: waifuController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Waifu kamu",
                hintText:
                    "Isi nama waifu lu, kalo nggak nanti ditimpa asteroid",
              ),
            ),
            for (var item in jenisKelamin)
              ListTile(
                leading: Radio(
                    value: item,
                    groupValue: birthSex,
                    onChanged: (String? value) {
                      setState(() {
                        birthSex = value!;
                      });
                    }),
              ),
            ListTile(
              leading: Checkbox(
                value: isHaveWaifu,
                onChanged: (bool? value) {
                  setState(() {
                    isHaveWaifu = value;
                  });
                },
              ),
              title: Text("Punya Waifu?"),
            ),
            SizedBox(
              width: 200,
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    nama = namaController.text;
                    waifu = waifuController.text;
                  });
                },
                child: Text("Tampilin"),
                style: OutlinedButton.styleFrom(
                  primary: Colors.purple,
                  backgroundColor: Color.fromARGB(66, 22, 16, 149),
                ),
              ),
            ),
            /*SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    angka++;
                  });
                  print(angka);
                },
                child: Text("Namvah"),
                style: OutlinedButton.styleFrom(
                  primary: Colors.purple,
                  backgroundColor: Color.fromARGB(66, 22, 16, 149),
                ),
              ),
            ),
            SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    angka--;
                  });
                  print(angka);
                },
                child: Text("Kurah"),
                style: OutlinedButton.styleFrom(
                  primary: Colors.purple,
                  backgroundColor: Color.fromARGB(66, 22, 16, 149),
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
