import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: SliversEx1(),));
}

class SliversEx1 extends StatelessWidget {
  const SliversEx1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,            // 2 true sliver app bar move
            pinned: true,              // moved not pinned // fully moved to bottom
            title: Text("SliverExample"),
            bottom: AppBar(
              title: Container(
                height:40 ,
                width: double.infinity,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search here",
                    prefixIcon: Icon(Icons.search_rounded),
                    suffixIcon: Icon(Icons.camera_alt),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) => Card(
                child: ListTile(
                  title: Text("Product"),
                  leading: Image.network("https://plus.unsplash.com/premium_photo-1675864663002-c330710c6ba0?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                  trailing: Icon(Icons.shopping_cart),
                ),
              ),
                childCount: 15
              ),
          ),
          SliverGrid(delegate: SliverChildBuilderDelegate((context, index)=> Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [Expanded(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaP0aaaDNF-pNvgPveu4D_Ll09uT1eFBAZGw&usqp=CAU")),
                Text("Hnnn",style: TextStyle(
                  fontSize: 15,fontWeight: FontWeight.bold,
                ),),
                Text("\$200/kg",style: TextStyle(fontSize: 15),)

              ],
            ),


          ),
            childCount: 10,

          ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisSpacing:15 , crossAxisCount: 2)),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index){
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Image.asset("assets/images/fruit remove.png")),
                    Text("Fruits",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    ),

                  ],
                  ),
                );
              }),
            ),
          )
        ],
      )),
    );
  }
}
