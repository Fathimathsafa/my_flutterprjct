import 'package:flutter/material.dart';
import 'package:my_flutterprjct/login%20and%20sign%20up/registration.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginEx1(),
  ));
}

class LoginEx1 extends StatelessWidget {
  var email = TextEditingController();
  var pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN PAGE"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Email"),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: pwd,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Password"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (email.text == "admin" && pwd.text == "1234") {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Homeex1()));
                    }
                  },
                  child: Text("Login Here")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RegistrationEx1()));
                  },
                  child: Text("Not a User? Register Here..."))
            ],
          ),
        ),
      ),
    );
  }
}
