import 'package:flutter/material.dart';

class Screen_statful extends StatefulWidget {
  String? name,loca;
  Screen_statful({super.key,this.name,this.loca});

  @override
  State<Screen_statful> createState() => _Screen_statfulState();
}

class _Screen_statfulState extends State<Screen_statful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("${widget.name} ${widget.loca}"),
      ),
    );
  }
}
