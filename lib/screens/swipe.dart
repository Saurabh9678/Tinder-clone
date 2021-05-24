import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tinder_clone/widget/routes.dart';
import 'package:tinder_clone/widget/swipebody.dart';
// import 'package:tinder_clone/widget/swipebody.dart';

class Swipepage extends StatefulWidget {
  @override
  _SwipepageState createState() => _SwipepageState();
}

class _SwipepageState extends State<Swipepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getAppbar(),
      body: getBody(),
      // bottomSheet: getFooter(),
    );
  }

  Widget getBody() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Swipebody(),
      // getfooter code here,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 25, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              backgroundColor: Color(0xFFFFFFFF),
              child: Center(
                child: SvgPicture.asset(
                  "assets/tinder_icon/refresh_icon.svg",
                  width: 25,
                  height: 25,
                ),
              ),
              onPressed: () {},
            ),
            FloatingActionButton(
              backgroundColor: Color(0xFFFFFFFF),
              child: Center(
                child: SvgPicture.asset(
                  "assets/tinder_icon/close_icon.svg",
                  width: 25,
                  height: 25,
                ),
              ),
              onPressed: () {},
            ),
            FloatingActionButton(
              backgroundColor: Color(0xFFFFFFFF),
              child: Center(
                child: SvgPicture.asset(
                  "assets/tinder_icon/star_icon.svg",
                  width: 25,
                  height: 25,
                ),
              ),
              onPressed: () {},
            ),
            FloatingActionButton(
              backgroundColor: Color(0xFFFFFFFF),
              child: Center(
                child: SvgPicture.asset(
                  "assets/tinder_icon/like_icon.svg",
                  width: 25,
                  height: 25,
                ),
              ),
              onPressed: () {},
            ),
            FloatingActionButton(
              backgroundColor: Color(0xFFFFFFFF),
              child: Center(
                child: SvgPicture.asset(
                  "assets/tinder_icon/thunder_icon.svg",
                  width: 25,
                  height: 25,
                ),
              ),
              onPressed: () {},
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
              icon: SvgPicture.asset(
                  "assets/tinder_icon/explore_active_icon.svg"),
              onPressed: () {}),
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
              icon: SvgPicture.asset("assets/tinder_icon/account_icon.svg"),
              onPressed: () {
                Navigator.pushNamed(context, Myroutes.profile);
              })
        ],
      ),
    );
  }
}
