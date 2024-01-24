import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login cnct.dart';
import 'login-sign.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Signin1 (),));
}
class  Signin1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading:
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage1()));
            },
             child: Icon(Icons.arrow_back,size: 20,color: Colors.black,),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            ),

      ),
      body: Center(
        child: Column(
          children: [
            Text("Sign in",style: GoogleFonts.habibi(color: Colors.black,fontSize: 30),),
            SizedBox(
              height: 30,
            ),
            TextField(
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
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.mail_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: "Password",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.mail_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: " Confirm Password",
              ),
            ),
            SizedBox(height:50 ,),
            TextButton(
                onPressed: () {},
                child:
                RichText(

                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(text: "already have an account?"),
                          TextSpan(
                              text: "login",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ])))
          ],

        ),
      ),
    );
  }
}