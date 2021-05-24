import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tinder_clone/widget/routes.dart';

class Chatpage extends StatefulWidget {
  @override
  _ChatpageState createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getAppbar(),
      body: getChat(),
    );
  }

  Widget getChat() {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Matches",
              style: TextStyle(
                  fontFamily: GoogleFonts.lato().fontFamily,
                  color: Colors.pink,
                  fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.yellow.shade700.withOpacity(0.8),
                              width: 3),
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.3)),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.3)),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.3)),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.3)),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.3)),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.3)),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                )),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Messages",
              style: TextStyle(
                  fontFamily: GoogleFonts.lato().fontFamily,
                  color: Colors.pink,
                  fontSize: 18),
            ),
          ],
        ),
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
              icon: SvgPicture.asset("assets/tinder_icon/chat_active_icon.svg"),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset("assets/tinder_icon/account_icon.svg"),
              onPressed: () {
                Navigator.pushNamed(context, Myroutes.profile);
              })
        ],
      ),
    );
  }
}
