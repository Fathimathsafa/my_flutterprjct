import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: (Listview3()),));
}
class Listview3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview Builder"),),
      body: ListView.builder(
        //itemCount: 40,
          itemBuilder: (context, index)=>Card(               // get infinity number
        child:Text("Hello"),
      )
      ),
    );
  }
}
