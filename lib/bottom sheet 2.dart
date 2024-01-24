import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomsheetEx(),
  ));
}

class BottomsheetEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottomsheet"),
      ),
      body: Center(
        child: GestureDetector(                            /// to tap an image
          onTap: () {
            showSheet(context);
          },
          child:
          Image.asset("assets/images/josh-hild-_TuI8tZHlk4-unsplash.jpg"),
        ),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(                             /// to show the bottmsheet
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        context: context,
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.share),
              trailing: Text("share"),
            ),
            ListTile(
              leading: Icon(Icons.copy),
              trailing: Text("copy"),
            )
          ],
        ));
  }
}
