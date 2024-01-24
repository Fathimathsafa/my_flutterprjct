import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home:StggeredGrid2() ,));
}
class StggeredGrid2 extends StatelessWidget {
  const StggeredGrid2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered_grid_view2"),
      ),
      body: StaggeredGrid.extent(maxCrossAxisExtent: 100,
        children: [
        StaggeredGridTile.count(crossAxisCellCount: 4, mainAxisCellCount: 3, child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/arrow.png"),fit: BoxFit.fill,
            )
          ),
        )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/arrow.png"),fit: BoxFit.fill,
                )
            ),
          )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 4, child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/arrow.png"),fit: BoxFit.fill,
                )
            ),
          )),
          StaggeredGridTile.count(crossAxisCellCount: 3, mainAxisCellCount: 4, child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/arrow.png"),fit: BoxFit.fill,
                )
            ),
          )),
      ],),
    );
  }
}
