import 'package:flutter/material.dart';

import '../Gridview/gridview2.dart';
import '../List view/list view 2.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Bottomnav(),));
}

class Bottomnav extends StatefulWidget {


  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  var index = 0;
  var screens=[
    Gridview2(),
    Listview2(),
    Gridview2(),
    Listview2(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapIndex){
setState(() {
  index=tapIndex;
});
        },
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.red,
          currentIndex: index ,
            items:
          [BottomNavigationBarItem(backgroundColor:Colors.cyan,icon: Icon(Icons.search_rounded),label:'Search' ),
        BottomNavigationBarItem(backgroundColor:Colors.orangeAccent,icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(backgroundColor:Colors.pink,icon: Icon(Icons.person),label: "person"),
            BottomNavigationBarItem(backgroundColor:Colors.brown,icon: Icon(Icons.settings),label: 'settings'),
          ]),
      body: screens[index],
    );
  }
}
