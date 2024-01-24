import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Bulb_add() ,));
}

class Bulb_add extends StatefulWidget {

  @override
  State<Bulb_add> createState() => _Bulb_addState();
}

class _Bulb_addState extends State<Bulb_add> {
var counter=0;
bool showBulb=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(counter.toString(),style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: Colors.yellowAccent,
floatingActionButton: FloatingActionButton(backgroundColor:Colors.red ,
//child: Icon(Icons.add,color: Colors.white,),
onPressed: (){
  setState(() {
    counter++;
    if(showBulb){
      showBulb=false;
    }else{
      showBulb = true;
    }

  }
  );
},
 child:Icon(showBulb ? Icons.lightbulb:Icons.lightbulb_outline_rounded))
    );
  }
}
