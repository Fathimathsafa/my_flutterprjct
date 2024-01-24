import 'package:flutter/material.dart';
import 'package:my_flutterprjct/my%20widget.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Gridview4(),));
}
class Gridview4 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid view builder fixed cross axis count"),
      ),
      body: GridView.builder(itemCount:30,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 4),
          itemBuilder: (context,index)=>
              Mywidget1(label: Text("hello"),onpressed: (){},bgcolor: Colors.cyan,image: Image.asset("assets/images/fruit remove.png"),)
            //  Container(
            // height: 50,
            // width: 50,
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage("assets/images/arrow.png"),
            //     fit: BoxFit.fill
            //   )
            // ),

          //)
      ),

    );
  }
}
