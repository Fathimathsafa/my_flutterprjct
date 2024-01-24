import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(home: Signup()));
}

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool showpwd = true;
  bool showpwd1= true;
  final formkey = GlobalKey<FormState>(); // to evaluate entire form
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup")),
      body: Form(
          key: formkey,
          child: Column(
            children: [
              Image.asset("assets/images/man.png", height: 50, width: 50),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  validator: (email) {
                    if (email!.isEmpty || !email.contains("@")) {
                      return "Enter a valid email id";
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
                ),
              ),
              TextFormField(
                obscureText: showpwd,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpwd) {
                            showpwd = false;
                          } else {
                            showpwd = true;
                          }
                        });
                      },
                      icon: Icon(showpwd == true
                          ? Icons.visibility
                          : Icons.visibility_off)),
                ),
                validator: (password) {
                  if (password!.isEmpty || password.length < 5) {
                    return "password should not be empty or length<5";
                  }
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    var isValid = formkey.currentState!.validate();
                    if (isValid == true) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home()));
                    }
                  },
                  child: Text("Sign up"))
            ],
          )),
    );
  }
}
