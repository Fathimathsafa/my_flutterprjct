import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: StackEx1(),));
}
class StackEx1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack"),),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                image: DecorationImage(fit: BoxFit.cover,
                    image:NetworkImage("https://plus.unsplash.com/premium_photo-1671308539538-6f20891d5e3a?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
              ),
            ),
              ),
            ),
            Positioned(top: 40,left: 20,
                child: Text("Name",style: TextStyle(color:Colors.white,fontSize: 30 ),)),
            Positioned(top: 70,left: 20,
                child: Text("Designation",style: TextStyle(color:Colors.white,fontSize: 30 ),)),
            Positioned(bottom: 10,right: 100,
                child:Wrap(
                  children:[
                    Icon(Icons.phone,color: Colors.white,),

                Text("phone",style: TextStyle(color:Colors.white,fontSize: 30 ),),
              ]
            ),
            ),
    Positioned(bottom: 50,right: 100,
    child:Wrap(
    children:[
    Icon(Icons.email_outlined,color: Colors.white,),

    Text("email",style: TextStyle(color:Colors.white,fontSize: 30 ),
    ),]
    )
    )
      ],
      )

      ),
    );
  }
}
