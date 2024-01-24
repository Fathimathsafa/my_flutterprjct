import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Gridview6(),));
}
class Gridview6 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview_extent"),
      ),
      body: GridView.extent(maxCrossAxisExtent: 120,mainAxisSpacing:5,crossAxisSpacing: 5, children: List.generate(16, (index) => Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/arrow.png"),
            fit: BoxFit.fill

          )
        ),

      )),),

    );
  }
}
