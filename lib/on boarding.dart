import 'dart:html';

import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_flutterprjct/screens/home.dart';

import 'add-image.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: OnBoardingEx(),));
}
class OnBoardingEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    PageDecoration page_decor=PageDecoration(
     bodyTextStyle: TextStyle(fontSize: 30,fontStyle:FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.blue ),
      titlePadding: EdgeInsets.all(20),
      // imagepadding,
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.red,Colors.orange,Colors.yellowAccent],
        begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
    return IntroductionScreen(
      pages:[PageViewModel(
        decoration: page_decor,
        /// must have either tittle or title widget
       /// must have body or body widget
       //title: "Page1",
       body: "hhhjjh",
        titleWidget: Image.asset("assets/images/man.png"),  // or image : Image.

      ),
        PageViewModel(
           // title: "Page2",
            //body: "hhhjjh",


          titleWidget: Image.asset("assets/images/man-avatar.png"),
          body: "fast delivery",

      ),
        PageViewModel(
           // title: "Page3",
            //body: "hhhjjh",
            titleWidget: Image.asset("assets/images/man.png"),
body: "order food",
      )],
      next: Text("Next"),
      showSkipButton: true,
      skip: Text("Skip"),
      done: Text("Countinue"),
      onDone: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home())),
      onSkip: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FirstProgram())
      ),
dotsDecorator:  DotsDecorator(
  size: Size(20, 20),
  activeSize: Size(40, 20),
  color: Colors.black,
  activeColor: Colors.red,
  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))
),
    );
  }
}
