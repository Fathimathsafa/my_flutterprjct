import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner :false,
    home: Whatsapp(),));
}
class Whatsapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.teal,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("WhatsApp",style: TextStyle(fontSize:15,color: Colors.white ) ),
        actions: [
          Icon(Icons.camera_alt_outlined,color: Colors.white,),
          SizedBox(width: 20),
          Icon(Icons.search_rounded,color: Colors.white,),
          SizedBox(width: 20),
          PopupMenuButton( itemBuilder: (context){
            return [
             const PopupMenuItem(child: Text("New group")),
              const PopupMenuItem(child: Text("New broadcast")),
              const  PopupMenuItem(child: Text("Linked devices")),
              const PopupMenuItem(child: Text("Starred messages")),
              const PopupMenuItem(child: Text("Payments")),
              const PopupMenuItem(child: Text("Settings")),
            ];
          }),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1702352461386-15dcf064708a?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),),
         title:Text ("safa",style:TextStyle(fontSize: 12,color: Colors.black)),
            subtitle: Row(
              children: [
                Text("hai"),
              ],
            ),
            trailing: Text("12.34 pm"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1702055894943-1f4012fbd991?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),),
            title:Text ("Nasrin",style:TextStyle(fontSize: 12,color: Colors.black)),
            subtitle: Row(
              children: [
                Icon(Icons.done_all,color: Colors.blue,),
                Text("how are you"),
              ],
            ),
            trailing: Text("11.00 pm"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1702055894943-1f4012fbd991?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),),
            title:Text ("Nitha",style:TextStyle(fontSize: 12,color: Colors.black)),
            subtitle: Row(
              children: [
                //Icon(Icons.done_all,color: Colors.blue,),
                Text("how are you"),
              ],
            ),
            trailing: Column(
              children: [
                Icon(Icons.circle,color: Colors.lightGreen),
                Text("11.00 pm"),
              ],
            ),

          ),
        ],
      ),
    );
  }
}
