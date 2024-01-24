
import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Gridview7(),));
}
class Gridview7 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview_Custom"),
      ),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), childrenDelegate: SliverChildListDelegate(List.generate(10, (index) => Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fruit remove.png"),
            fit: BoxFit.fill
          )
        ),
      )))),
    );
  }
}
