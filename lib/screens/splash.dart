
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';
import 'login screen.dart';
void main(){
  runApp(MaterialApp(home: Splash(),));
}

class Splash extends StatefulWidget {
  const Splash({Key ? key}):super(key:key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    Timer(Duration(seconds: 5),() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder:(context) => Login()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/boliviainteligente-il0se5enRwc-unsplash.jpg"),
                fit: BoxFit.fill)),

        //width:double.infinity,
        //color:Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/man.png",
                height: 200,
                width: 200,
              ),
              Text("hai",style:GoogleFonts.pacifico(color: Colors.white,fontSize: 45,fontStyle: FontStyle.italic),)
            ],
          )

        ),
      ),
    );
  }
}






