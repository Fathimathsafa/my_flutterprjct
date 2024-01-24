import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Appbar1(),
  ));
}

class Appbar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.blueAccent,
        title: Text(
          "app bar",
          // style: TextStyle(color: Colors.black),
        ),
        bottom: AppBar(
          title: Container(
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded), hintText: "search"),
            ),
          ),
        ),
      ),
    );
  }
}
