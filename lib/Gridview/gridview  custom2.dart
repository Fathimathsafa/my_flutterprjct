import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Gridview8(),));
}
class Gridview8 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview_Custom"),
      ),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 120), childrenDelegate: SliverChildBuilderDelegate(childCount: 15, (context,index) => Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/fruit remove.png"),
                fit: BoxFit.fill
            )
        ),
      ))
    ),
    );
  }
}
