// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aug_22_/view/sign_in/sign_in.dart';
import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _SignInState();
}

class _SignInState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController1 = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Sign Up For Free",
              style: TextStyle(
                decorationThickness: 2,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: nameController1,
                decoration: InputDecoration(
                  enabled: true,
                  label: Text("Your Email Address"),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red, width: 2)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 2)),
                ),
                validator: (value) {
                  if (nameController1.text.contains("@gamil.com")) {
                    return null;
                  } else {
                    return "enter a valide email";
                  }
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                    decoration: InputDecoration(
                  enabled: true,
                  label: Text("Your Password"),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                ))),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                    decoration: InputDecoration(
                  enabled: true,
                  label: Text("Your Confirm Password"),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                ))),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignIn(),
                              ));
                        });
                      },
                      child: Text("Sign up"),
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 95),
              child: Row(
                children: [
                  Text("Already have an account?"),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ));
                      });
                    },
                    child: Text(
                      "sign up",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
