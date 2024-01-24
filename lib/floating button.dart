import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home:FloatEx() ,));
}
class FloatEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FloatingActionButton,\nAlertDialog,SnackBar"),),
      floatingActionButton:FloatingActionButton(backgroundColor: Colors.cyanAccent,
      child: Icon(Icons.add,color:Colors.black),
    onPressed: (){
       showDialog(context: context, builder: (context)=>AlertDialog(title: Text("Alert Dialog"),
        content:Text("Alert"),
        actions: [
          IconButton
            (onPressed:(){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.yellow,
                  content: Text("Successfully added",style: TextStyle(color: Colors.black),)));
              Navigator.pop(context);},
              icon: Icon(Icons.add)),
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.yellow,
                content: Text("Successfully minimaised",style: TextStyle(color: Colors.black),)));
            Navigator.pop(context);},
              icon: Icon(Icons.minimize)),
        ],
         icon: Icon(Icons.add_alert,color: Colors.red,),



       backgroundColor: Colors.purple[100],
       ),

      );

    },
      )
    );
  }
}
