import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Gridview2(),));
}
class Gridview2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview-maxcrossaxis'),
      ),
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 120),
        children:List.generate(10, (index) => Container(
          // color: Colors.red,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/fruit remove.png"),fit: BoxFit.fill)
          ),
        ),
        ),
      ),

    );
  }
}
