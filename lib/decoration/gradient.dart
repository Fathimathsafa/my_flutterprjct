import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gradient(),));
}
class Gradient extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradient"),),
      body: Container(
        width:double.infinity,
        decoration:BoxDecoration(
            gradient: LinearGradient(colors: [
            Colors.red,
            Colors.blue,
            Colors.yellow
          ],begin: Alignment.bottomRight,
    end: Alignment.topLeft
        ),
        ),
    ));
  }
}
