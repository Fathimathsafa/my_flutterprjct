import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../List view/list view 2.dart';
import '../gridview/gridview2.dart';


void main() {
  runApp(MaterialApp(
    home: ConvexEx(),
  ));

}

class ConvexEx extends StatefulWidget {
  @override
  State<ConvexEx> createState() => _ConvexExState();
}

class _ConvexExState extends State<ConvexEx> {
  var index = 0;
  var screens = [
    Gridview2(),
    Listview2 (),
    Gridview2(),
    Listview2(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.purpleAccent,
        activeColor: Colors.pink,
        shadowColor: Colors.green,
        items: [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.settings),
          TabItem(icon: Icons.person),
          TabItem(icon: Icons.search)
        ],
        onTap: (tapIndex){
          setState(() {
            index=tapIndex;
          });
        },),
      body: screens[index],
    );
  }
}