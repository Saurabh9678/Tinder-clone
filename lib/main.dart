import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tinder_clone/screens/chat.dart';
import 'package:tinder_clone/screens/num_like.dart';
import 'package:tinder_clone/screens/profile.dart';
import 'package:tinder_clone/screens/register.dart';
import 'package:tinder_clone/screens/swipe.dart';

import 'package:tinder_clone/screens/login.dart';
import 'package:tinder_clone/widget/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
        initialRoute: Myroutes.login,
        routes: {
          Myroutes.login: (context) => LoginPage(),
          Myroutes.mainscreen: (context) => Swipepage(),
          Myroutes.numlike: (context) => NumlikePage(),
          Myroutes.profile: (context) => Profilepage(),
          Myroutes.chat: (context) => Chatpage(),
          Myroutes.register: (context) => Registerpage(),
        });
  }
}
