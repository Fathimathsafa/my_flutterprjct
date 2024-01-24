import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ExpansionTileEx(),
  ));
}

class ExpansionTileEx extends StatelessWidget {
  var colors=[Colors.pink,Colors.red,Colors.brown];
var colors1=[Colors.orange,Colors.blue,Colors.red];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion tile"),
      ),
      body:ListView(
    children: [ExpansionTile(
          title: Text("Tile 1"),
          subtitle: Text("Colors"),
          children: List.generate(
              3,
              (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundColor: colors[index],
                    ),
                  ),
          ),
      ),
      ExpansionTile(
        title: Text("Tile 2"),
        subtitle: Text("Colors"),
        children: List.generate(
          3,
              (index) => ListTile(
            leading: CircleAvatar(
              backgroundColor: colors1[index],
            ),
          ),
        ),
      ),
      ExpansionTile(
        title: Text("Tile 3"),
        subtitle: Text("Colors"),
        children: List.generate(
          3,
              (index) => ListTile(
            leading: CircleAvatar(
              backgroundColor: colors[index],
            ),
          ),
        ),
      ),
    ],
      ),
    );
  }
}
