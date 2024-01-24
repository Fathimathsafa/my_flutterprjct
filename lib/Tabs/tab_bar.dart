import 'package:flutter/material.dart';
import 'package:my_flutterprjct/Gridview/gridview2.dart';
import 'package:my_flutterprjct/List%20view/list%20view%202.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Tabbar1(),));
}
class Tabbar1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length:4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            bottom: TabBar(tabs: [Tab(child: Icon(Icons.group),
          ),
            Tab(child: Text("Chat")),
              Tab(child: Text("Updates")),
              Tab(child: Text("Call")),
            ],),
          ),
          body: TabBarView(children: [
            Text("Hai"),
            Listview2(),
            Icon(Icons.favorite),
            Gridview2(),

          ],),
        ));
  }
}
