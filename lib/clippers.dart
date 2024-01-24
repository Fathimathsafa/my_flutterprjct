import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: ClipperEx(),));
}
class ClipperEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clippers"),                    /// method to cut rectangular shape
      ),
      body: ListView(                      /// call list view is not mandatory bcz here we used list view for eg
        children: [
          ClipRect(
            child: Align(
              widthFactor: .6,                                               
              heightFactor: .4,                 
              child: Image.asset("assets/images/fruit remove.png"),
            ),
          ),
          ///  method to cut rectangular shape
          Padding(padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network("https://images.unsplash.com/photo-1626808642875-0aa545482dfb?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          )
          ),
          /// method to cut ovel shape
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipOval(
              child: Image.network("https://plus.unsplash.com/premium_photo-1683910767532-3a25b821f7ae?q=80&w=2008&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ),
          ),
          /// method to cut different shape
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipPath(
              clipper: MessageClipper(),
              child:
              Container(color: Colors.red,
               height: 200,)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipPath(
              clipper: MovieTicketClipper(),
              child: Container(color: Colors.yellow,
              height: 200),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipPath(
              clipper: MovieTicketBothSidesClipper(),
              child: Container(color: Colors.blue,
              height: 400,),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(color: Colors.green,height: 400,),

            ),
          ),
          ClipPath(
            clipper: ParallelogramClipper(),
             child: Image.network("https://images.unsplash.com/photo-1530076886461-ce58ea8abe24?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
            // Container(color: Colors.brown,
            // height: 500,),
          ),
          
        ],
      ),          
    );
  }
}
