import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Contactlist(),));
}

class Contactlist extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.lightBlue,
      title: Text("SimpleContactList",style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar( backgroundImage: NetworkImage("assets/images/Custom-Icon-Design-Flatastic-4-Male.512.png"),backgroundColor: Colors.orange,),
            title:Text("Safa"),
            subtitle:Text ("9847143317",style: TextStyle(color: Colors.grey),),
            trailing:Icon(Icons.arrow_back_ios,color: Colors.grey,),
          ),
          ListTile(
            leading: CircleAvatar( backgroundImage: NetworkImage("assets/images/Custom-Icon-Design-Flatastic-4-Male.512.png"),backgroundColor: Colors.green,),
            title:Text("Mom"),
            subtitle:Text ("9847653317",style: TextStyle(color: Colors.grey),),
            trailing:Icon(Icons.arrow_back_ios,color: Colors.grey,),
          ),
          ListTile(
            leading: CircleAvatar( backgroundImage: NetworkImage("assets/images/Custom-Icon-Design-Flatastic-4-Male.512.png"),backgroundColor: Colors.yellow,),
            title:Text("Dad"),
            subtitle:Text ("78747143317",style: TextStyle(color: Colors.grey),),
            trailing:Icon(Icons.arrow_back_ios,color: Colors.grey,),
          ),
          ListTile(
            leading: CircleAvatar( backgroundImage: NetworkImage("assets/images/Custom-Icon-Design-Flatastic-4-Male.512.png"),backgroundColor: Colors.brown,),
            title:Text("Nasi"),
            subtitle:Text ("9847143317",style: TextStyle(color: Colors.grey),),
            trailing:Icon(Icons.arrow_back_ios,color: Colors.grey,),
          ),
          ListTile(
            leading: CircleAvatar( backgroundImage: NetworkImage("assets/images/Custom-Icon-Design-Flatastic-4-Male.512.png"),backgroundColor: Colors.red,),
            title:Text("Muba"),
            subtitle:Text ("9847143317",style: TextStyle(color: Colors.grey),),
            trailing:Icon(Icons.arrow_back_ios,color: Colors.grey,),
          ),
          ListTile(
            leading: CircleAvatar( backgroundImage: NetworkImage("assets/images/Custom-Icon-Design-Flatastic-4-Male.512.png"),backgroundColor: Colors.blue,),
            title:Text("Manu"),
            subtitle:Text ("9847143317",style: TextStyle(color: Colors.grey),),
            trailing:Icon(Icons.arrow_back_ios,color: Colors.grey,),
          ),
          ListTile(
            leading: CircleAvatar( backgroundImage: NetworkImage("assets/images/Custom-Icon-Design-Flatastic-4-Male.512.png"),backgroundColor: Colors.yellowAccent,),
            title:Text("Sanu"),
            subtitle:Text ("9847143317",style: TextStyle(color: Colors.grey),),
            trailing:Icon(Icons.arrow_back_ios,color: Colors.grey,),
          ),
          ListTile(
            leading: CircleAvatar( backgroundImage: NetworkImage("assets/images/Custom-Icon-Design-Flatastic-4-Male.512.png"),backgroundColor: Colors.lightGreen,),
            title:Text("Rifa"),
            subtitle:Text ("9847143317",style: TextStyle(color: Colors.grey),),
            trailing:Icon(Icons.arrow_back_ios,color: Colors.grey,),
          ),
          ListTile(
            leading: CircleAvatar( backgroundImage: NetworkImage("assets/images/Custom-Icon-Design-Flatastic-4-Male.512.png"),backgroundColor: Colors.pinkAccent,),
            title:Text("Janna"),
            subtitle:Text ("9847143317",style: TextStyle(color: Colors.grey),),
            trailing:Icon(Icons.arrow_back_ios,color: Colors.grey,),
          ),
          ListTile(
            leading: CircleAvatar( backgroundImage: NetworkImage("assets/images/Custom-Icon-Design-Flatastic-4-Male.512.png"),backgroundColor: Colors.redAccent,),
            title:Text("Rayan"),
            subtitle:Text ("9847143317",style: TextStyle(color: Colors.grey),),
            trailing:Icon(Icons.arrow_back_ios,color: Colors.grey,),
          ),
          ListTile(
            leading: CircleAvatar( backgroundImage: NetworkImage("assets/images/Custom-Icon-Design-Flatastic-4-Male.512.png"),backgroundColor: Colors.white,),
            title:Text("Nasrin"),
            subtitle:Text ("9847143317",style: TextStyle(color: Colors.grey),),
            trailing:Icon(Icons.arrow_back_ios,color: Colors.grey,),
          ),
          ListTile(
            leading: CircleAvatar( backgroundImage: NetworkImage("assets/images/Custom-Icon-Design-Flatastic-4-Male.512.png"),backgroundColor: Colors.blue,),
            title:Text("Nitha"),
            subtitle:Text ("9847143317",style: TextStyle(color: Colors.grey),),
            trailing:Icon(Icons.arrow_back_ios,color: Colors.grey,),
          ),
        ],
      ),
    );
  }
}
