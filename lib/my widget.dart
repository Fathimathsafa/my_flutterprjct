import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,
//   home: Mywidget1(),));
// }

class Mywidget1 extends StatelessWidget {
  final Color? bgcolor;
  final Image? image;
  final Widget? label;
  VoidCallback? onpressed;

 Mywidget1(
     { this.bgcolor, this.image,required this.label,required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Column(
        children: [
          Expanded(child:
          Container(
            child: image,
          )),
          ElevatedButton(onPressed: onpressed, child: label)
        ],
      ),
    );
  }
}
