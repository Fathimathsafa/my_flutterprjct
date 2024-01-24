import 'package:flutter/material.dart';
import 'package:my_flutterprjct/mediaquery_widget/large%20screen.dart';
import 'package:my_flutterprjct/mediaquery_widget/small%20screen.dart';


import '../Gridview/gridview3.dart';
import '../Gridview/gridview5.dart';
void main (){
  runApp( Mypage());
}

class Mypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// fetch the theme of divices
    bool isDarkTheme = MediaQuery .of(context).platformBrightness == Brightness.dark;
      return MaterialApp (
        theme: isDarkTheme ? ThemeData.light() : ThemeData.dark(),
        home: Screenn () ,
      );
  }

}
class Screenn extends StatelessWidget {
  var orientation,height,width;

  bool? isLargeScreen;
  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    height      = MediaQuery.of(context).size.height;
    width       = MediaQuery.of(context).size.width;

    isLargeScreen = width > 600;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("screen Orientation"),backgroundColor: Colors.red,
      // ),
     // body: orientation == Orientation.portrait ?
      body:isLargeScreen == true
          ? LargeScreen()
          :SmallScreen(),
      // Gridview5() :  Gridview3(),
     //  Container(color: Colors.blue,
     //  height: height/2,
     //  width: width/2,
     //  )
     // : Container(color: Colors.purple,
     //    height: height/2,
     //    width: width/4,
     //  ),
    );
  }
}
