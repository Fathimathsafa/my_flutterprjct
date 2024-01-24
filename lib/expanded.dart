import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Expanded1(),
  ));
}

class Expanded1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded,Fontawsome,Custom_appbar"),
        bottom: AppBar(
          title: Container(
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search), hintText: "search"),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            // to expand the child widget
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                  ),
                  FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.blue,
                  ),
                  FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Colors.pink,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Card(
                  color: Colors.primaries[index % Colors.primaries.length],
                  child: Center(
                      child: Text(
                        "hi",
                        style: TextStyle(color: Colors.white),
                      )),
                )),
          )
        ],
      ),
    );
  }
}