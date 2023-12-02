import 'package:flutter/material.dart';

class splashbody extends StatelessWidget {
  const splashbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration:const BoxDecoration(
        color:Color(0xff446DF6),
        
      ),
    child:const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage("assets/images/splash.png")),
        SizedBox(
          height: 12,
        ),
        Image(image: AssetImage("assets/images/podio.png")),
        
      ]),
    ),
    );
  }
}