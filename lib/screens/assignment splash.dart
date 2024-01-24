import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Splash(),));
}

class Splash extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,end: Alignment.bottomCenter,
            colors: [Colors.pink,Colors.deepOrange,Colors.yellow],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image.asset("assets/images/fork remove.png",color: Colors.white,height: 300,width: 300),
              Text("Fresh Foods",style: GoogleFonts.pacifico(color:Colors.white,fontSize: 30),),
              Text("Tasty & Healthy",style: GoogleFonts.roboto(color:Colors.white,fontSize: 20),),
              Positioned(
                left: 0, right: 0,bottom: 0,
                  child: Image.asset("assets/images/fruit remove.png",height: 300)
              ),
            ],

          ),
        ),
      ),
    );
  }
}


