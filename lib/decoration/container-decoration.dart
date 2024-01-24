import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: containerDec(),
  ));
}

class containerDec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("container Decoration"),
      ),
      body: Container(
        width: 500,
        height: 500,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/boliviainteligente-il0se5enRwc-unsplash.jpg"),
                fit: BoxFit.fill)),
        //width:double.infinity,
        //color:Colors.amber,
        child: Icon(
          Icons.favorite,
          size: 90,
        ),
      ),
    );
  }
}
