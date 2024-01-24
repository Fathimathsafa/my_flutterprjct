import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Listview5(),));
}
class Listview5 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List view seperated"),),
      body: ListView.separated(itemBuilder: (context,index)=> Card(color: Colors.pinkAccent,
        child: Image.asset("assets/images/man-avatar.png",height: 100,width: 100),
      ),

          separatorBuilder: (context,index) {
            if (index % 4 == 0) {
              return Card(color: Colors.red,
                child: Text("advertisment"),);
            }
            return SizedBox(height: 5,);
          },
          itemCount: 15),
    );
  }
}




