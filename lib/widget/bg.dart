import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Color(0xFFFF7556),
            Color(0xFFFF665E),
            Color(0xFFFD476D),
          ],
              stops: [
            0.2,
            0.3,
            1
          ])),
    );
  }
}
