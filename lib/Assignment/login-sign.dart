import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_flutterprjct/Assignment/login%20cnct.dart';
import 'package:my_flutterprjct/Assignment/sign%20cntc.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Firstpage(),));
}
class Firstpage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Hello!",style:GoogleFonts.goblinOne( fontWeight: FontWeight.bold,color:Colors.orange,fontSize: 50),
            ),
            Padding(padding: EdgeInsets.all(20),),
            Text("Automatic identify verification which enable you to ",style: GoogleFonts.habibi(color: Colors.orange,fontSize: 15)),
            Text("verify your identity",style: GoogleFonts.habibi(color: Colors.orange,fontSize: 15)),
            Padding(padding: EdgeInsets.all(20),),
          Image.asset("assets/images/arrow.png",height: 175,width: 175,),
            Padding(padding: EdgeInsets.all(20),),
           MaterialButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage1()));
           },
             color:Colors.orange ,
             shape: StadiumBorder(),
             height: 60,
             minWidth: 300,
             child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
            Padding(padding: EdgeInsets.all(20),),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Signin1()));
            },
              color:Colors.orange ,
              shape: StadiumBorder(),
              height: 60,
              minWidth: 300,
              child: Text("Sign in",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),)
          ],
        ),
      ),
    );
  }
}
