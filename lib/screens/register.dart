import 'package:flutter/material.dart';
import 'package:tinder_clone/widget/bg.dart';
import 'package:tinder_clone/widget/routes.dart';

class Registerpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundGradient(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              width: size.width * 0.9,
              child: SingleChildScrollView(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SafeArea(
                      child: Container(
                        height: size.height * 0.15,
                        child: Center(
                          child: Text(
                            "Register your account",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      cursorHeight: 20,
                      style: TextStyle(
                          fontSize: 22, color: Colors.white.withOpacity(0.8)),
                      decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle:
                            TextStyle(fontSize: 25, color: Colors.white),
                        border: InputBorder.none,
                      ),
                    ),
                    TextFormField(
                      cursorHeight: 20,
                      style: TextStyle(
                          fontSize: 22, color: Colors.white.withOpacity(0.8)),
                      decoration: InputDecoration(
                        labelText: "Age",
                        labelStyle:
                            TextStyle(fontSize: 25, color: Colors.white),
                        border: InputBorder.none,
                      ),
                    ),
                    TextFormField(
                      cursorHeight: 20,
                      style: TextStyle(
                          fontSize: 22, color: Colors.white.withOpacity(0.8)),
                      decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle:
                            TextStyle(fontSize: 25, color: Colors.white),
                        border: InputBorder.none,
                      ),
                    ),
                    TextFormField(
                      cursorHeight: 20,
                      style: TextStyle(
                          fontSize: 22, color: Colors.white.withOpacity(0.8)),
                      decoration: InputDecoration(
                        labelText: "Location",
                        labelStyle:
                            TextStyle(fontSize: 25, color: Colors.white),
                        border: InputBorder.none,
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      cursorHeight: 20,
                      style: TextStyle(
                          fontSize: 22, color: Colors.white.withOpacity(0.8)),
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle:
                            TextStyle(fontSize: 25, color: Colors.white),
                        border: InputBorder.none,
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Myroutes.mainscreen);
                      },
                      child: Container(
                        width: size.width * 0.8,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Sign up",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.3,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
