import 'package:flutter/material.dart';
import 'package:posttest6_1915016059_rizkypramudya/constant.dart';
import 'package:posttest6_1915016059_rizkypramudya/home.dart';
import 'package:get/get.dart';

class Art extends StatelessWidget {
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
                RejuvenationModernMap(),
                Text(
                  "Peta dunia abad ke-31 dari series Stranded ciptaan Rizky Pramudya.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
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
