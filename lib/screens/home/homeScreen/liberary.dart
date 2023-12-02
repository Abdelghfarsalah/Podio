import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:podio/constant.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("There is nothing yet",
        style: TextStyle(
          fontFamily: font1,
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: Color(0xff555555)
        ),
        ),
        SizedBox(
          height: 20,
        ),
          LottieBuilder.asset("assets/animation/Animation - 1701552432802.json")
        ],
      ),
    );
  }
}