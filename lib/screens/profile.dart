import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tinder_clone/widget/routes.dart';

class Profilepage extends StatefulWidget {
  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getAppbar(),
      body: getProfile(),
    );
  }

  Widget getProfile() {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Container(
              width: size.width * 0.4,
              height: size.height * 0.25,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.5),
                  image: DecorationImage(
                      image: AssetImage("assets/profile1.jpeg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Saurabh,  21",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: GoogleFonts.lato().fontFamily),
              ),
              Icon(
                Icons.verified,
                color: Colors.blue,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Jorhat engineerring college",
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: GoogleFonts.lato().fontFamily),
          ),
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: size.width * 0.25,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.15)),
                      child: Icon(
                        Icons.settings,
                        color: Colors.grey,
                        size: 38,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "SETTINGS",
                      style: TextStyle(
                        fontFamily: GoogleFonts.lato().fontFamily,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: size.width * 0.25,
                      height: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xFFFF7556),
                                Color(0xFFFF665E),
                                Color(0xFFFD476D),
                              ],
                              stops: [
                                0.1,
                                0.2,
                                1
                              ])),
                      child: Icon(
                        Icons.add_a_photo_rounded,
                        color: Colors.white,
                        size: 42,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "ADD MEDIA",
                      style: TextStyle(
                        fontFamily: GoogleFonts.lato().fontFamily,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: size.width * 0.25,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.15)),
                      child: Icon(
                        Icons.edit,
                        color: Colors.grey,
                        size: 38,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "EDIT INFO",
                      style: TextStyle(
                        fontFamily: GoogleFonts.lato().fontFamily,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: SvgPicture.asset("assets/tinder_icon/explore_icon.svg"),
              onPressed: () {
                Navigator.pushNamed(context, Myroutes.mainscreen);
              }),
          IconButton(
              icon: SvgPicture.asset("assets/tinder_icon/likes_icon.svg"),
              onPressed: () {
                Navigator.pushNamed(context, Myroutes.numlike);
              }),
          IconButton(
              icon: SvgPicture.asset("assets/tinder_icon/chat_icon.svg"),
              onPressed: () {
                Navigator.pushNamed(context, Myroutes.chat);
              }),
          IconButton(
              icon: SvgPicture.asset(
                  "assets/tinder_icon/account_active_icon.svg"),
              onPressed: () {})
        ],
      ),
    );
  }
}
