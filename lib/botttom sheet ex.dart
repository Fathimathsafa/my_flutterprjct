import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home:  Bottom_sheetEx(),));
}

class Bottom_sheetEx extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("BottomSheet"),
      ),
      body: Center(
       child: GestureDetector(
         onTap: (){
           showModalBottomSheet(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
               context: context, builder: (context)=>Column(
             mainAxisSize: MainAxisSize.min,
             children: [
               ListTile(
                 leading: Icon(Icons.share),
                 trailing: Text("Share"),
               ),
               ListTile(
                 leading: Icon(Icons.copy),
                 trailing: Text("Copy"),
               ),
             ],
           ));
         },
         child: Image.network("https://images.unsplash.com/photo-1586810724476-c294fb7ac01b?q=80&w=1936&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
       ),
      ),
    );
  }
}
