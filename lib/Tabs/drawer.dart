import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home:  DrawerEx(),));
}
class DrawerEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.lightBlueAccent,
        child:ListView(
          children: [

            UserAccountsDrawerHeader(
              decoration: BoxDecoration(image: DecorationImage(image:AssetImage("assets/images/fruit remove.png"),fit: BoxFit.fill )),
              accountName: Text("Safa"), accountEmail: Text("Safahaneefa01@gmail.com"),
            currentAccountPicture: Image.asset("assets/images/man2.png"),
              otherAccountsPictures: [
                CircleAvatar(backgroundImage: AssetImage("assets/images/man.png"),),
              //Image.asset("assets/images/man.png"),
                Image.asset("assets/images/contact list icon.png") ,

              ],
              arrowColor: Colors.red,
            ),
            ListTile(
                leading: Icon(Icons.person),
                title:Text("Name"),),
            ListTile(
              leading: Icon(Icons.home),
              title:Text("Home"),),
            ListTile(
              leading: Icon(Icons.settings),
              title:Text("Settings"),),

          ],
        ),

      ),
    );
  }
}
