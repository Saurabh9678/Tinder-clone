import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tinder_clone/widget/likebody.dart';
import 'package:tinder_clone/widget/routes.dart';

class NumlikePage extends StatefulWidget {
  @override
  _NumlikePageState createState() => _NumlikePageState();
}

class _NumlikePageState extends State<NumlikePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, appBar: getAppbar(), body: likeBody());
  }

  Widget likeBody() {
    return Likebody();
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
              icon:
                  SvgPicture.asset("assets/tinder_icon/likes_active_icon.svg"),
              onPressed: () {}),
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
