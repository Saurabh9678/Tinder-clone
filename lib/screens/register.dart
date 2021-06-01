import 'package:flutter/material.dart';
import 'package:tinder_clone/widget/bg.dart';
import 'package:tinder_clone/widget/routes.dart';

class Registerpage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  moveToMain(BuildContext context) {
    if (_formkey.currentState.validate()) {
      Navigator.pushNamed(context, Myroutes.mainscreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundGradient(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Center(
              child: Form(
                key: _formkey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width * 0.8,
                        height: size.height * 0.05,
                        child: Center(
                          child: Text(
                            "Register Your Account",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50, bottom: 20),
                        child: Container(
                          width: size.width * 0.95,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 10),
                            child: TextFormField(
                              cursorHeight: 20,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Name",
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter your name";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          width: size.width * 0.95,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 10),
                            child: TextFormField(
                              cursorHeight: 20,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Username",
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter your username";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          width: size.width * 0.95,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 10),
                            child: TextFormField(
                              cursorHeight: 20,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Age",
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter your age";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          width: size.width * 0.95,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 10),
                            child: TextFormField(
                              cursorHeight: 20,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Location",
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter your Location";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          width: size.width * 0.95,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 10),
                            child: TextFormField(
                              cursorHeight: 20,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Hobbies/Likes",
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          width: size.width * 0.95,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 10),
                            child: TextFormField(
                              cursorHeight: 20,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "Password",
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              obscureText: true,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter valid password";
                                } else if (value.length < 8) {
                                  return "The length of the password must be more than 8 characters";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => moveToMain(context),
                        child: Container(
                          width: 180,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Center(
                              child: Text(
                            "Register",
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(fontSize: 20),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context, Myroutes.login);
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 23, color: Colors.white),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
