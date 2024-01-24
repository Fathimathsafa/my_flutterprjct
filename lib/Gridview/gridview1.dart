import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Gridview1(),));
}
class Gridview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview1"),
      ),
      body:GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisSpacing: 5,crossAxisSpacing: 5 ,childAspectRatio: 1.0,),
      children:List.generate(10, (index) => Container(
       // color: Colors.primaries[index%Colors.primaries.length],   /// to get different colors in a grid
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        // color: Colors.red,
       // decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/fruit remove.png"),fit: BoxFit.fill)
      ),
      ),
    ),

      );
  }
}
