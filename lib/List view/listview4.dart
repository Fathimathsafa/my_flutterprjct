import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Listview4(),));
}
class Listview4 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List view seperated"),),
      body: ListView.separated(itemBuilder: (context,index)=> Card(color: Colors.pinkAccent,
          child:Image.asset("assets/images/man-avatar.png",height: 100,width: 100),
    ),

          separatorBuilder: (context,index)=> Divider(
    color: Colors.red,
          thickness: 15,
          ),
          itemCount: 15),
    );
  }
}
