import 'dart:html';

import 'package:flutter/material.dart';

import 'login.dart';

// void main (){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,
//     home: RegistrationEx1(),));
// }

class RegistrationEx1 extends StatefulWidget {
  @override
  State<RegistrationEx1> createState() => _RegistrationEx1State();
}

class _RegistrationEx1State extends State<RegistrationEx1> {
  var formkey = GlobalKey<FormState>();

  /// use global key to validate entire scaffold or form  /// use value key for single field
  String? pass;

  // to collect value from pwd field
  var is_pwd_hidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTRATION PAGE"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  /// when we use Form we want to use textformfield instead of textfield
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: "Email"),
                  validator: (email) {
                    if (email!.isEmpty || !email.contains("@")) {
                      return "Invalid email / or empty field";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (pwd) {
                    // if(cpwd != pwdcontroller.text)   // another method
                    pass = pwd;
                    if (pwd!.isEmpty || pwd.length < 6) {
                      return "length should be > 6 / field must not be empty";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (is_pwd_hidden == true) {
                              is_pwd_hidden = false;
                            } else {
                              is_pwd_hidden = true;
                            }
                          });
                        },
                        icon: Icon((is_pwd_hidden == true
                            ? Icons.visibility_off
                            : Icons.visibility)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: "Password"),
                  obscureText: is_pwd_hidden,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (cpwd) {
                    if (cpwd != pass) {
                      return "Password must be same";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: "Confirm password"),
                  obscureText: true,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple),
                    onPressed: () {
                      var valid = formkey.currentState?.validate();
                      if (valid == true) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginEx1()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Please check the fields")));
                      }
                    },
                    child: Text("Registration Here")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
