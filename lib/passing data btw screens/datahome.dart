import 'package:flutter/material.dart';
import 'package:my_flutterprjct/passing%20data%20btw%20screens/stateful%20page.dart';
import 'package:my_flutterprjct/passing%20data%20btw%20screens/statless%20page.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: DatahomeEx(),));
}

class DatahomeEx extends StatelessWidget {
  String name="Luminar";  // instance variable
  int phone =123456789;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Screen_Stateless(name: name,Phone: phone)));
            }, child: Text(" To stateless page",style: TextStyle(color: Colors.black),),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=>Screen_statful(name:name,loca:"kakkanad")));}, child: Text("To stateful page",style: TextStyle(color: Colors.black),),),
          ],
        ),
      ),
    );
  }
}
