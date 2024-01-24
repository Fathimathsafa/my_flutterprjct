import 'package:flutter/material.dart';

class Homeex1 extends StatelessWidget {
  const Homeex1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome user",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.greenAccent,
          fontSize: 20
        ),),
      ),
    );
  }
}
