import 'package:flutter/material.dart';

void main() {
  runApp(               // to attach widget tree to ui
      MaterialApp(     // material theme
        home: FirstProgram()  // initial page
      ));
}

class FirstProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context){

    return   Scaffold(
      appBar: AppBar(
       centerTitle: true,
          //title: Icon(Icons.person,color: Colors.red)),
        title: Text("My first program",style:TextStyle(fontSize:35, fontWeight:FontWeight.bold , color: Colors.black),
        )),
                body: Center(
       child: Icon(
         Icons.favorite,
         color:Colors.red,
         size:50 ,
       ),
     ),
      );

  }
}


