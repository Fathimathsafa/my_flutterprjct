import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listview2(),
  ));
}

class Listview2 extends StatelessWidget {
  var name=["Anu","Nasrin","Binu","Ciya","Dona","Safa","sali","Nitha","Shahul","Naseefa","Anas","Muba","Neenu"];
  var images=["assets/images/man.png",
    "assets/images/man.png",
    "assets/images/man.png",
    "assets/images/man.png",
    "assets/images/man.png",
    "assets/images/man.png",
    "assets/images/man.png",
    "assets/images/man.png",
    "assets/images/man.png",
    "assets/images/man.png",
    "assets/images/man.png",
    "assets/images/man.png",
    "assets/images/man.png",];
  var icons=[ Icons.done_all,Icons.message,Icons.done_all,Icons.message,Icons.done_all,Icons.message,Icons.done_all,Icons.message,Icons.done_all,Icons.message,Icons.done_all,Icons.message,Icons.done_all];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view generator"),
      ),
      body: ListView(
          children: List.generate(
              //13,
            name.length,   // to get list according to the name
              (index) => Card(
                   // child: Image.asset("assets/images/man.png",height: 100,width: 100),
                //child: Text(name[index]),
                child: ListTile(
                  leading: Image.asset(images[index]),
                  title: Text(name[index]),
                  subtitle: Icon(icons[index]),
                  trailing: CircleAvatar(backgroundColor: Colors.green,),
                ),


                  )
          )),
    );
  }
}
