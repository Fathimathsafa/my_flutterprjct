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
            Image(image: NetworkImage("https://images.unsplash.com/photo-1699461840896-de3ae8c46de8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8fA%3D%3D")),
           //Image.network("https://unsplash.com/photos/a-large-building-with-a-cross-on-top-of-it-Qu8YraMHEhc"),
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

