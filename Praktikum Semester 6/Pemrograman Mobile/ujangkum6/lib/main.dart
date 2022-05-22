import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ujangkum6/getx_controller/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //int _counter = 0;
  final CounterController c = Get.put(CounterController());
  final SwitchController sw = Get.put(SwitchController());
  final TextController tec = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Obx(
          () => Container(
            color: sw.switchValue.value ? Colors.green : Colors.amber,
          ),
        ),
        title: Text("Ujang"),
        actions: [
          Obx(
            () => Switch(
              value: sw.switchValue.value,
              onChanged: (value) {
                sw.switchValue(value);
              },
              thumbColor:
                  MaterialStateColor.resolveWith((states) => Colors.black),
              trackColor:
                  MaterialStateColor.resolveWith((states) => Colors.white),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                '${c.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            TextField(
              controller: tec.nameEditingController,
            ),
            ElevatedButton(
              onPressed: () {
                tec.name(tec.nameEditingController.text);
                Get.to(SecondPage());
              },
              child: Text("Ke Hal 2"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: c.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SecondPage extends StatelessWidget {
  final TextController tec = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => Text('${tec.name.value}')),
    );
  }
}
