import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: MainPageAnim(),));
}
class MainPageAnim extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text("MainPage"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, PageRouteBuilder(
              transitionDuration: Duration(seconds: 1),
              pageBuilder: (context,anim1,anim2){
                return Second_Page_Animation();
              },
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                const begin = Offset(0.0, 1.0);
                const end = Offset.zero;
                final tween = Tween(begin: begin, end: end);
                final curvedAnimation =CurvedAnimation(parent: animation,
                    curve: Curves.elasticIn);

                return SlideTransition(
                  position: tween.animate(curvedAnimation),
                  child: child,
                );
              },

            ));
          }, child: Text('Slide Transition')),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context,a1,a2){
              return Second_Page_Animation();
            },
                transitionDuration: Duration(seconds: 1),
                transitionsBuilder: (context,an1,an2,child){
                  return FadeTransition(opacity: an1,child: child,);
                }

            ));
          }, child: Text('Fade Transition')),
          SizedBox(
            height: 30,
          ),  ElevatedButton(onPressed: (){
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context,a1,a2){
              return Second_Page_Animation();
            },
                transitionDuration: Duration(seconds: 1),
                transitionsBuilder: (context,an1,an2,child){
                  return ScaleTransition(scale: an1,child: child,);
                }

            ));
          }, child: Text('Scale Transition')),

        ],
      ),
    );
  }
}

class Second_Page_Animation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPageAnim()));
        },
            child: Text("Go Back")),
      ),
    );
  }
}