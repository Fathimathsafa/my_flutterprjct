import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: StaggeredGrid3(),));
}
class StaggeredGrid3 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("staggered gridview3"),
        
      ),
      body: StaggeredGrid.extent(maxCrossAxisExtent: 200,children: [
     StaggeredGridTile.extent(crossAxisCellCount: 4, mainAxisExtent: 102,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fork remove.png"),fit: BoxFit.fill,
              )
            ),
          )
      ),
        StaggeredGridTile.extent(crossAxisCellCount: 7,
            mainAxisExtent: 150,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/fork remove.png"),fit: BoxFit.fill,
                  )
              ),
            )
        ),
        StaggeredGridTile.extent(crossAxisCellCount: 4,
            mainAxisExtent: 100,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/fork remove.png"),fit: BoxFit.fill,
                  )
              ),
            )
        ),
        StaggeredGridTile.extent(crossAxisCellCount: 8,
            mainAxisExtent: 120,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/fork remove.png"),fit: BoxFit.fill,
                  )
              ),
            )
        ),
        StaggeredGridTile.extent(crossAxisCellCount: 5,
            mainAxisExtent: 150,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/fork remove.png"),fit: BoxFit.fill,
                  )
              ),
            )
        ),
      ],),
    );
  }
}
