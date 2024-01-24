import 'package:flutter/material.dart';

class Screen_Stateless extends StatelessWidget {
  String? name;
  int Phone;


 Screen_Stateless({super.key,  this.name,required this.Phone   });  // to  change to not required => remove " required and insert ? with string String?

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to $name contact $Phone",style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
