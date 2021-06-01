import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tinder_clone/data/explore_json.dart';

class Swipebody extends StatefulWidget {
  @override
  _SwipebodyState createState() => _SwipebodyState();
}

class _SwipebodyState extends State<Swipebody> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 120.0),
      child: Container(
        height: size.height,
        child: TinderSwapCard(
          totalNum: explore_json.length,
          maxWidth: size.width,
          maxHeight: size.height * 0.75,
          minHeight: size.height * 0.6,
          minWidth: size.width * 0.75,
          cardBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFBABABA).withOpacity(0.3),
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ]),
            child: Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(explore_json[index]['img']),
                          fit: BoxFit.cover)),
                ),
                Container(
                  width: size.width,
                  height: size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: size.width * 0.75,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Text(
                                      explore_json[index]['name'],
                                      style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.ledger().fontFamily,
                                          fontSize: 30,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      explore_json[index]['age'],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily:
                                            GoogleFonts.ledger().fontFamily,
                                        fontSize: 22,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Wrap(
                                  direction: Axis.horizontal,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 5.0, bottom: 10.0),
                                      child: Container(
                                        width: size.width * 0.2,
                                        height: size.height * 0.03,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            border: Border.all(
                                                color: Colors.white)),
                                        child: Center(
                                          child: Text(
                                            explore_json[index]['likes'][2],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: GoogleFonts.lato()
                                                    .fontFamily),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 5.0, bottom: 10.0),
                                      child: Container(
                                        width: size.width * 0.2,
                                        height: size.height * 0.03,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            border: Border.all(
                                                color: Colors.white)),
                                        child: Center(
                                          child: Text(
                                            explore_json[index]['likes'][0],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: GoogleFonts.lato()
                                                    .fontFamily),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 5.0, bottom: 10.0),
                                      child: Container(
                                        width: size.width * 0.2,
                                        height: size.height * 0.03,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            border: Border.all(
                                                color: Colors.white)),
                                        child: Center(
                                          child: Text(
                                            explore_json[index]['likes'][1],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: GoogleFonts.lato()
                                                    .fontFamily),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
