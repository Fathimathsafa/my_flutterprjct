import 'dart:math';

import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Large Screen"),
        backgroundColor: Colors.yellow,
      ),
      body: Row(
        children: [
          Container(
            width: 300,
            height: 200,
            color: Colors.blueGrey,
          ),
          Expanded(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context,index){
                  return Padding(padding: EdgeInsets.all(10.0),
                    child: Card(
                      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      child: ListTile(title: Text("Video $index"),),
                    ),
                  );
                }
                ,
              ))],
      ),
    );
  }
}
