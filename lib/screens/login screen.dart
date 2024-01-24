import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_flutterprjct/screens/sign%20up.dart';
import 'home.dart';

class Login extends StatelessWidget {
  final uname_ctrl = TextEditingController();
  final pwd_ctrl = TextEditingController();
  String username = "safahaneefa01@gmail.com";
  String password = "12345";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/man.png",
            width: 50,
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: uname_ctrl,
              decoration: InputDecoration(
                  hintText: "Username",
                  helperText: "Username should be an email",
                  labelText: "UserName",
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: pwd_ctrl,
              obscureText:true , // to erase password in password column
              obscuringCharacter: "*", // replace password by character
              decoration: InputDecoration(
                  hintText: "Password",
                  helperText: "password should be at least 5 character",
                  labelText: "password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),

          ),
          ElevatedButton(
              onPressed: () {
      if (uname_ctrl.text != "" && pwd_ctrl != "") {
        if (uname_ctrl.text == username && pwd_ctrl.text == password) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Home()));
        }

      else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.pinkAccent,content: Text("username/password incorrect")));
      }
              }
    else{
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.pinkAccent,content: Text("username/password incorrect")));
          }
  },

              child: Text("Login")),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Signup()));
              },
              child: Text(
                "Not a user? Register here",
                style: GoogleFonts.pacifico(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ))
        ],
      ),
    );
  }


}
