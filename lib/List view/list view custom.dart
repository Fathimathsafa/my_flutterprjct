import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Listviewcustom(),));
}

class Listviewcustom extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview custom"),),
      body: ListView.custom(childrenDelegate: SliverChildListDelegate(List.generate(15, (index) =>Card(
        child: Image.asset("assets/images/fork remove.png",height: 100,width: 100,),)))),
    );
  }
}
