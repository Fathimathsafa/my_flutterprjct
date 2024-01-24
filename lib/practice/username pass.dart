import 'package:flutter/material.dart';

import 'home page1.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: UserName1()));
}

class UserName1 extends StatelessWidget {

 final uname_contoller=TextEditingController();
 final pass_contoller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: TextField(
              controller: uname_contoller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              hintText: "username"
            ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: TextField(
              controller: pass_contoller,
              decoration:InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                hintText: "Password"
              ) ,
            ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home12(username:uname_contoller.text)));
          }, child: Text("Login")),
        ],
      ),
    );
  }
}
