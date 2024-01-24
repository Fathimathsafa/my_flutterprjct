
import 'package:flutter/material.dart';

void main() {
  runApp(               // to attach widget tree to ui
      MaterialApp(     // material theme
          home: FirstProgram()  // initial page
      ));
}

class FirstProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
            title: Text(
              "My first program",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            )),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, color: Colors.red,),
              Icon(Icons.person, color: Colors.red,),

            ],
          ),
              Text("My application")
          ],
        ),
    ),
    );
  }
}