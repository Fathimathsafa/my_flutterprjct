import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SliverEx(),
  ));
}

class SliverEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset("assets/images/fruit remove.png",fit: BoxFit.cover,),
            // title: Container(
            //   height: 100,
            //   width: double.infinity,
            //   color: Colors.red,
            //   child: Text(
            //     "flexible space",
            //     style: TextStyle(
            //       color: Colors.brown,
            //     ),
            //   ),
            // ),
          ),
          pinned: true,
          //floating: true,

          elevation: 5,
          title: Text("Sliver Example"),
          bottom: AppBar(
            title: Container(
              width: double.infinity,
              height: 40,
              child: TextField(
                decoration: InputDecoration(hintText: "search"),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              childCount: 30,
              (context, index) =>
                  Card(child: Text("hai"), color: Colors.pinkAccent)),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 50,
            width: double.infinity,
            color: Colors.yellow,
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
              childCount: 15,
              (context, index) => Container(
                    color: Colors.green,
                  )),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 5, crossAxisSpacing: 5, crossAxisCount: 4),
        ),
      ]),
    );
  }
}
