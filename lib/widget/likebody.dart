import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tinder_clone/data/likes_json.dart';

class Likebody extends StatefulWidget {
  @override
  _LikebodyState createState() => _LikebodyState();
}

class _LikebodyState extends State<Likebody> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * 0.495,
                height: size.height * 0.07,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                    child: Text(
                  likes_json.length.toString() + ' Likes',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: GoogleFonts.varelaRound().fontFamily),
                )),
              ),
              SizedBox(
                width: 1.5,
                height: size.height * 0.07,
                child: Container(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
              Container(
                width: size.width * 0.495,
                height: size.height * 0.07,
                color: Colors.white,
                child: Center(
                  child: Text(
                    "Top Picks",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: GoogleFonts.varelaRound().fontFamily),
                  ),
                ),
              ),
            ],
          ),
          Wrap(
            children: List.generate(likes_json.length, (index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 2.0, 5.0, 4),
                child: Container(
                  width: size.width * 0.45,
                  height: 250,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.pinkAccent.withOpacity(0.2),
                                  blurRadius: 5,
                                  spreadRadius: 3),
                            ],
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                  (likes_json[index]['img']),
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.fromLTRB(19.0, 5.0, 19.0, 10),
        child: Container(
          width: size.width * 0.9,
          height: size.height * 0.07,
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Text(
              "See who Likes you!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.varelaRound().fontFamily,
                  wordSpacing: 4.0),
            ),
          ),
        ),
      ),
    );
  }
}
