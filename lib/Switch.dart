import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home:Switch_Radio () ,));
}
class Switch_Radio extends StatefulWidget {

  @override
  State<Switch_Radio> createState() => _Switch_RadioState();
}

class _Switch_RadioState extends State<Switch_Radio> {
  
  bool result=true;
  int selectedoption=1;


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch & Radio"),
      ),
      body: Column(
        children: [
          Switch(
            inactiveThumbColor: Colors.red,
            activeTrackColor: Colors.yellow,
          activeColor: Colors.green,
              value: result,
              onChanged: (bool value1){
            setState(() {
              result=value1;
            });
          }),
          ListTile(
            title: Text("dart"),
            leading: Radio(value: 1, groupValue: selectedoption, onChanged: (value){
              setState(() {
                selectedoption=value!;
              });

            }),
            
          ),
          ListTile(
            title: Text("C++"),
            leading: Radio(value: 2, groupValue: selectedoption, onChanged: (value){
              setState(() {
                selectedoption=value!;
              });


            }),

          ),
          ListTile(
            title: Text("java"),
            leading: Radio(value: 3, groupValue: selectedoption, onChanged: (value){
              setState(() {
                selectedoption=value!;
              });

            }),

          ),
        ],
      ),
    );
  }
}
