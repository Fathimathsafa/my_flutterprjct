import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login-sign.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Loginpage1(),
  ));
}

class Loginpage1 extends StatelessWidget {
  String uname ="safahaneefa01";
  String password = "safa123";

  final user_controller = TextEditingController();   // to get username -->
// input value
  final pass_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: ElevatedButton(

          onPressed: () {

            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Firstpage()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Login",
              style: GoogleFonts.habibi(color: Colors.black, fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),

            TextField(
              controller:user_controller ,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.mail_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),

                ),

                hintText: "Email",


              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller:pass_controller,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.mail_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: "Password",
              ),
            ),
            SizedBox(height:50 ,),
            TextButton(
                onPressed: () {},
                child:
                RichText(

                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,),
                        children: [
                          TextSpan(text: "don't have an account?"),
                          TextSpan(
                              text: "sign up",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ])))
          ],

        ),
      ),
    );
  }
}
