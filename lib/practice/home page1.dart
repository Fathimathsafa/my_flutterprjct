import 'package:flutter/material.dart';

class Home12 extends StatelessWidget {
  String username;
  Home12({super.key,required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome $username"),
      ),

    );
  }
}
