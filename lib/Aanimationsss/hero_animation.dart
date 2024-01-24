import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: HeroMain(),));
}

class HeroMain extends StatelessWidget {
  const HeroMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Main Page"),backgroundColor: Colors.lightGreen,
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HerDetail()));
        },
        child: Hero(
          tag: "imageHero",
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.purpleAccent
            ),
            width: 300,
            height: 300,
            child: Icon(Icons.widgets,size: 40,color: Colors.white,),
          ),
        ),
      ),
    );
  }
}

class HerDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Hero Detail Page"),
       backgroundColor: Colors.pink,
     ),
     body: Center(
       child: GestureDetector(
         onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => HeroMain()));
         },
         child: Hero(tag: "imageHero",
         child: Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(50),
color: Colors.yellow
           ),
           width: 500,
           height: 500,
           child: Icon(Icons.filter_vintage_outlined,
           size: 100,
           color: Colors.red,),
         ),),
       ),
     ),
   );
  }
}
