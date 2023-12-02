import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podio/constant.dart';
import 'package:podio/screens/home/homeScreen/widget/customContainer.dart';

class science extends StatelessWidget {
  const science({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Science",
                  style: TextStyle(
                      fontFamily: "MuseoModerno",
                      fontSize: 18,
                      color: Color(0xff00002A),
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "View all",
                      style: TextStyle(
                          fontFamily: font1,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff446DF6)),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Icon(FontAwesomeIcons.arrowRight)
                  ],
                )),
          ],
        ),
        const SizedBox(
          height: 2,
        ),
        SizedBox(
          height: 150,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:8,vertical: 0),
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: const [
                customcontainer(
                    abdo: true,
                    color: Color(0xffFFC3BF),
                    title: "The Skeptics...",
                    image: "assets/images/science/Rectangle 42.png"),
                customcontainer(
                    abdo: true,
                    color: Color(0xffDFD6FB),
                    title: "Radiolab",
                    image:"assets/images/science/Rectangle 43.png"),
                customcontainer(
                    abdo: true,
                    color: Color(0xffCCEDFD),
                    title: "Science ",
                    image: "assets/images/science/Rectangle 44.png")
              ],
            ),
          ),
        )
      ],
    );
  }
}