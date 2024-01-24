import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridview5(),
  ));
}

class Gridview5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview_Count"),
      ),
      body: GridView.count(crossAxisCount: 4,children: List.generate(25, (index) => Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/arrow.png"),
            fit: BoxFit.fill
          ),
        ),
      ))),
    );
  }
}
