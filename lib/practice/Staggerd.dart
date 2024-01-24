import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: StaggerdEx1(),));
}

class StaggerdEx1 extends StatelessWidget {
  var ccount=[2,2,2,2,2,2];
  var mcounr=[3,2,3,1,3,2];
  StaggerdEx1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StaggeredGrid.count(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: 
          List.generate(6, (index) => StaggeredGridTile.count(
            crossAxisCellCount: ccount[index],
            mainAxisCellCount: mcounr[index],
            child: Card(
              color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              child: Column(
                children: [
                  Expanded(child: Image.network("https://images.unsplash.com/photo-1704972841788-86fac20fc87e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8")),
                  Text("Mount",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ))
          // StaggeredGridTile.count(
          //   crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
              // child: Card(
              //   color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       Expanded(child: Image.network("https://images.unsplash.com/photo-1703593191760-ff33fe19c56d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHx8",fit: BoxFit.fill,)),
              //     Text("TREE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              //     ],
              //   ),
              // ),),
          // StaggeredGridTile.count(
          //   crossAxisCellCount: 1,
          //   mainAxisCellCount: 2,
          //   child: Card(
          //     color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         Image.network("https://images.unsplash.com/photo-1703593191760-ff33fe19c56d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHx8",fit: BoxFit.fill,),
          //         Text("TREE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          //       ],
          //     ),
          //   ),),
          // StaggeredGridTile.count(
          //   crossAxisCellCount: 2,
          //   mainAxisCellCount: 1,
          //   child: Card(
          //     color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         Expanded(child: Image.network("https://images.unsplash.com/photo-1703593191760-ff33fe19c56d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHx8",fit: BoxFit.fill,)),
          //         Text("TREE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          //       ],
          //     ),
          //   ),),
        
      ),

    );
  }
}
