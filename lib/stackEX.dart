import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home:StackEx () ,));
}

class StackEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Stack(
        children: [
          Container(height: 350,width: 350,color: Colors.red,),

          Positioned(top: 100,        // to arrange the positions of any container
              child: Container(height: 120,width: 120,color: Colors.green,)),

          Positioned(top: 10, right: 10,
              child: Container(height: 100,width: 100,color: Colors.blueAccent,)),
        ],
      ),
    );
  }
}
