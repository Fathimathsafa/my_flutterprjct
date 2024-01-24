import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Listview4(),));
}
class Listview4 extends StatelessWidget {
   var months=['January','February','March',"April","May","June",'July',"August","September","October","November","December"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List view seperated"),),
      body: ListView.separated(itemCount:12,itemBuilder: (context,index)=> Card(color: Colors.white,
        child:
        Text(months[index]),
      ),

          separatorBuilder: (context,index)
    {
      if(index%4==0){

        return Card(color: Colors.red,
        child: Text("Advertisment"),
        );
    }return SizedBox(height: 30,);
    },
      )
    );
  }
}
