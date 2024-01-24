import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StackEx1(),
  ));
}

class StackEx1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Atm Card"),
        elevation: 5,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 700,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                // we can use BorderRadius.all(Radius.circular(10)) .to
                image: const DecorationImage(
                  image: AssetImage("assets/images/atm back.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                left: 12,
                top: 16,
                child: Text(
                  "Visa Platinum",
                  style: GoogleFonts.abel(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
              left: 12,
              top: 80,
              child: Row(
                children: [
                  Icon(
                    Icons.nfc_outlined,
                    color: Colors.white60,
                    size: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Transform.rotate(
                      angle: 90 * pi / 180,
                      child: Icon(
                        Icons.wifi,
                        color: Colors.white60,
                        size: 50,
                      )),
                ],
              ),
            ),
            Positioned(
                left: 16,
                top: 140,
                child: Text(
                  "4000 1187 2345 5642",
                  style: GoogleFonts.frederickaTheGreat(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
                left: 16,
                bottom: 99,
                child: Text(
                  "4000",
                  style: GoogleFonts.frederickaTheGreat(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
              left: 90,
              bottom: 70,
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                       Text("G00D",style: GoogleFonts.scada(fontSize: 10,
                        color: Colors.white),),


                         Text("THRU",style:GoogleFonts.scada(fontSize: 10,
                            color: Colors.white), ),



                    ],
                  ),
                    SizedBox(width: 5,),

                    Text("12/20", style: GoogleFonts.frederickaTheGreat(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),),
                  

                ],
              ),
            ),
            Positioned(
                left: 10,
                bottom: 20,
                child: Text("FATHIMATH SAFA KK",style:GoogleFonts.frederickaTheGreat(fontSize: 25,color: Colors.white) ,)),
            Positioned(
              left: 400,
              bottom: 10,
              child: Column(
                children: [
                  Text("VISA",style:GoogleFonts.frederickaTheGreat(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold)),
                  SizedBox(height: 5,),
                  Text("Platinum",style:GoogleFonts.frederickaTheGreat(fontSize: 20,color: Colors.white),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
