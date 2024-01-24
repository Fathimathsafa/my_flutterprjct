import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner:false, home: Staggered_Gridview(),));
}

class Staggered_Gridview extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Staggered_Gridview"),
      ),
      body: StaggeredGrid.count(
        crossAxisCount: 6,children: [
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/fruit remove.png"),fit: BoxFit.fill,
                )
              ),
            )),

          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/fruit remove.png"),fit: BoxFit.fill,
                    )
                ),
              )),

            StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 4,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/fruit remove.png"),fit: BoxFit.fill,
                      )
                  ),
                )),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/fruit remove.png"),fit: BoxFit.fill,
                  )
              ),
            )),
          ],),





    );
  }
}
