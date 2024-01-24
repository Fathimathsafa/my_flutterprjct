import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Appicon(),));
}
class Appicon extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app icon"),
      ),
      body: Container(
        height: 100,
        width: 100,
        color: Colors.red,
        child: Row(
          children: [
            FaIcon(FontAwesomeIcons.facebook),
            FaIcon(FontAwesomeIcons.twitter),
            FaIcon(FontAwesomeIcons.whatsapp),
            FaIcon(FontAwesomeIcons.facebookMessenger),
          ],
        ),
      ),
    );
  }
}
