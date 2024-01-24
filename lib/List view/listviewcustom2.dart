import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Listviewcustom2(),));
}

class Listviewcustom2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview custom"),),
      body: ListView.custom(
          scrollDirection: Axis.horizontal,
          childrenDelegate: SliverChildBuilderDelegate((context,index)=>Card(
          child:Icon(Icons.favorite),
      color: Colors.pinkAccent)))
    )
    ;
  }
}