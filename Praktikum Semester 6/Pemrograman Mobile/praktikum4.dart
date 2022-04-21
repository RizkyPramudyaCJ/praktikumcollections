import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Utama"),
        backgroundColor: Colors.purple,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Header ya ini"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              tileColor: Colors.red,
              leading: Icon(Icons.home),
              title: Text("Halaman Ke dua"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SetelahKitaPaste(),
                  ),
                );
              },
            ),
            ListTile(
              tileColor: Colors.amber,
              leading: Icon(Icons.home),
              title: Text("Halaman Ke tiga"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SetelahTiga(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      /*body: Center(
        child: ElevatedButton(
          child: Text("Ke Halaman 2"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SetelahKitaPaste(),
              ),
            );
          },
        ),
      ),*/
      /*body: Center(
        child: ElevatedButton(
          child: Text("Ke Halaman 2"),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => SetelahKitaPaste(),
              ),
            );
          },
        ),
      ),*/
    );
  }
}

class SetelahKitaPaste extends StatelessWidget {
  SetelahKitaPaste({Key? key}) : super(key: key);
  List<Widget> _tabs = [
    Tab(text: "Waifu"),
    Tab(text: "Pesan"),
    Tab(text: "Diari"),
  ];

  List<Widget> _tabBody = [
    Icon(Icons.chat),
    Icon(Icons.photo),
    Icon(Icons.phone),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Halaman Kedua"),
          backgroundColor: Colors.purple,
          bottom: TabBar(
            tabs: (_tabs),
          ),
        ),
        body: TabBarView(children: _tabBody),
      ),
      /*body: Center(
          child: ElevatedButton(
            child: Text("Kembali ke Halaman Utama"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),*/
    );
  }
}

class SetelahTiga extends StatefulWidget {
  const SetelahTiga({Key? key}) : super(key: key);

  @override
  State<SetelahTiga> createState() => _SetelahTigaState();
}

class _SetelahTigaState extends State<SetelahTiga> {
  List<BottomNavigationBarItem> _navBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: "Search",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Profile",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.badge),
      label: "Achieves",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.military_tech),
      label: "Military",
    ),
  ];

  int _index = 0;

  List<Widget> _body = [
    Container(color: Colors.red),
    Container(color: Colors.red),
    Container(color: Colors.red),
    Container(color: Colors.red),
    Container(color: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Ketiga"),
        backgroundColor: Colors.pink,
      ),
      body: _body.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _navBarItems,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
