import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,home: Listview1(),)
  );
}
class Listview1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.lightGreen,
        title:  Text("Listview",style: TextStyle(color: Colors.black),),
      ),
      body: ListView(
        children: [
          // Center(child: Text("customer List")),
          // Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png"),
          // Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png"),
          // Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png"),
          // Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png"),
          // Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png"),
          // Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png"),
          // Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png"),

             Card(
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
             color: Colors.red,
             shadowColor: Colors.red,
             elevation: 15,

            child: ListTile(tileColor: Colors.grey,
             // leading:Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png",color: Colors.green,),
              leading: CircleAvatar(backgroundColor: Colors.green,
               // radius: 50,
                  backgroundImage: AssetImage("assets/images/8673632_ic_fluent_person_filled_icon.png",)),
              title: Text("Safa"),
              subtitle:Text("7025850603"),
              trailing: Row(
                mainAxisSize:MainAxisSize.min,
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children:[
                Icon(Icons.message,color: Colors.green,
                ),
                SizedBox(width: 15,),
                Icon(Icons.call,color: Colors.green,),
                ],
              ),
            ),
          ),
          ListTile(
            leading:Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png",color: Colors.green,),
            title: Text("Amrtha"),
            subtitle:Text("7026794890"),
            trailing: Icon(Icons.call,color: Colors.green,
            ),

          ),
          ListTile(
            leading:Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png",color: Colors.green,),
            title: Text("Nasrin"),
            subtitle:Text("7025867806"),
            trailing: Icon(Icons.call,color: Colors.green,),
          ),
          ListTile(
            leading:Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png",color: Colors.green,),
            title: Text("Sali"),
            subtitle:Text("7034567809"),
            trailing: Icon(Icons.call,color: Colors.green,),
          ),
          ListTile(
            leading:Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png",color: Colors.green,),
            title: Text("Nasi"),
            subtitle:Text("7057799900"),
            trailing: Icon(Icons.call,color: Colors.green,),
          ),
          ListTile(
            leading:Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png",color: Colors.green,),
            title: Text("Nitha"),
            subtitle:Text("7025890604"),
            trailing: Icon(Icons.call,color: Colors.green,),
          ),
          ListTile(
            leading:Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png",color: Colors.green,),
            title: Text("Muba"),
            subtitle:Text("7025768903"),
            trailing: Icon(Icons.call,color: Colors.green,),
          ),ListTile(
            leading:Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png",color: Colors.green,),
            title: Text("Riza"),
            subtitle:Text("9025060309"),
            trailing: Icon(Icons.call,color: Colors.green,),
          ),
          ListTile(
            leading:Image.asset("assets/images/8673632_ic_fluent_person_filled_icon.png",color: Colors.green,),
            title: Text("Shadi"),
            subtitle:Text("7025980603"),
            trailing: Icon(Icons.call,color: Colors.green,),
          ),
          ListTile(
            leading:Image.network("https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-female-black-6-512.png"),
            title: Text("sinu"),
            subtitle:Text("8525850603"),
            trailing: Icon(Icons.call,color: Colors.green,),
          ),

        ],
      ),
    );
  }
}
