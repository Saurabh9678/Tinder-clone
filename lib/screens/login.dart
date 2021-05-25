import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tinder_clone/widget/bg.dart';
import 'package:tinder_clone/widget/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  moveToMain(BuildContext context) {
    if (_formkey.currentState.validate()) {
      Navigator.pushNamed(context, Myroutes.mainscreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundGradient(),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 180,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 120.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                  child: Center(
                                child: SvgPicture.asset(
                                    "assets/tinder_icon/explore_active_icon.svg"),
                              )),
                              SizedBox(
                                width: 8.0,
                              ),
                              Container(
                                child: Center(
                                    child: Text(
                                  "tinder",
                                  style: TextStyle(
                                      color: Color(0xFFFD476D),
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:
                                          GoogleFonts.lato().fontFamily),
                                )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 20.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4.0, horizontal: 10.0),
                                child: Center(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Enter username",
                                      // labelText: "Username",
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return "Please enter the username";
                                      }

                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3.0, horizontal: 10.0),
                                child: Center(
                                  child: TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      // labelText: "Password",
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return "Please enter a password";
                                      } else if (value.length < 6) {
                                        return "The length of the password can not be less than 6 characters";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                                onPressed: () => moveToMain(context),
                                child: Text("Login")),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have an account?",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Myroutes.register);
                                      },
                                      child: Container(
                                        width: 70,
                                        height: 28,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Center(
                                          child: Text(
                                            "Sign up",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
