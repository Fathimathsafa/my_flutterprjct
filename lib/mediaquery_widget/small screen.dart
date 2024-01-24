import 'package:flutter/material.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Large Screen"),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Container(width: double.infinity,
          height: 200,
          color: Colors.greenAccent,),
          Expanded(
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context,index){
                  return Padding(padding: EdgeInsets.all(10.0),
                  child: Card(
                    color: Colors.pink,
                    child: ListTile(title: Text("Video $index"),),
                  ),
            
            
                  );
                }),
          ),
    
        ],
      )
    );
  }
}
