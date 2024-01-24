import 'package:flutter/material.dart';
void main() {
  runApp(               // to attach widget tree to ui
      MaterialApp(     // material theme
          home: FirstProgram()  // initial page
      ));
}

class FirstProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text(
        "My first program",
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    )),
    body: Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
     // Image(image: AssetImage("assets/images/1564534_customer_man_user_account_profile_icon.png")),
     Image.asset("assets/images/1564534_customer_man_user_account_profile_icon.png",
       height: 180,
       width:180,),
    ],
    ),
    ),
    );
  }
}

