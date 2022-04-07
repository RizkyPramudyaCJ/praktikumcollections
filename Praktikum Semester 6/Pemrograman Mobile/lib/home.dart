import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget myContainer() {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/coffee.png"),
        ),
      ),
    );
  }

  Widget gambarLain() {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/tes.png"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    myContainer(),
                    myContainer(),
                    myContainer(),
                    myContainer(),
                    myContainer(),
                    myContainer(),
                    myContainer(),
                  ],
                ),
              ),
              myContainer(),
              gambarLain(),
              Container(
                width: 400,
                height: 400,
                color: Colors.purple,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
