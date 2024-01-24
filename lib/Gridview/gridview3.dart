import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Gridview3(),));
}
class Gridview3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview_builder"),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 4), itemBuilder: (context,index)=>Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/fruit remove.png"),fit: BoxFit.fill)
      ),)),
    );
  }
}
