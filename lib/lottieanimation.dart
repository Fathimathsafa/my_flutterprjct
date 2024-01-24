import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home:LottieEx (),));
}
class LottieEx extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LottieAnimation"),
      ),
      body: Center(
       child:
       //Lottie.network("https://lottie.host/2cc0ab8a-230e-40b7-a6f4-575c2df05471/sizZGy4I6g.json"),
        // take animation in network
      Lottie.asset("assets/animation/bee.json"),
      ),
    );
  }
}
