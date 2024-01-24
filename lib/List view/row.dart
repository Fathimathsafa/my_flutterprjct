import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: (Row()),));
}

class Row extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
        children:[
          Image.asset("assets/images/man.png"),
          Image.asset("assets/images/man.png"),
          Image.asset("assets/images/man.png"),
          Image.asset("assets/images/man.png"),
          Image.asset("assets/images/man.png"),

        ],
        ),
      ),
    );
  }
}
