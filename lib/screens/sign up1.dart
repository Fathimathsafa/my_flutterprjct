import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    home: Signup(),
  ));
}

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formkey = GlobalKey<FormState>();
  bool showPassword = true;
  bool showpassword1 = true;
  String? comfirmpass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body: Form(
          key: formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/man.png",
                height: 50,
                width: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  validator: (email) {
                    if (email!.isEmpty || !email.contains('@')) {
                      return "Enter a valid email ID";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  obscureText: showPassword,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showPassword) {
                                showPassword = false;
                              } else {
                                showPassword = true;
                              }
                            });
                          },
                          icon: Icon(showPassword
                              ? Icons.visibility
                              : Icons.visibility_off))),
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "Password should not be empty and length should be greater than 6 characters";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  obscureText: showpassword1,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpassword1) {
                                showpassword1 = false;
                              } else {
                                showpassword1 = true;
                              }
                            });
                          },
                          icon: Icon(showPassword ? Icons.visibility : Icons.visibility_off))
                  ),
                  validator: (cpassword) {
                    if (cpassword != comfirmpass || cpassword!.isEmpty) {
                      return "Password mismatch/empty";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    var isValid = formkey.currentState!.validate();
                    if (isValid == true) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home()));
                    }
                  },
                  child: Text("signup"))
            ],
          )),
    );
  }
}
