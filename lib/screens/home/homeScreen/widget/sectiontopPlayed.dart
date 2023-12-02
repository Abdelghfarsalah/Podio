import 'package:flutter/material.dart';
import 'package:podio/screens/home/homeScreen/widget/topplayedBox.dart';

class sectiontopplayed extends StatelessWidget {
  const sectiontopplayed({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "Top Played",
              style: TextStyle(
                  fontFamily: "MuseoModerno",
                  fontSize: 18,
                  color: Color(0xff00002A),
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
         topplayedBox(
          image: "assets/images/sleep.png",
          imagetow: "assets/images/Elli.png",
          date: "18 Dce - 3 hr 03 min",
          name: "Peter Bregman",
          title: "Eat Sleep Work Repeat",
        ),
         SizedBox(
          height: 15,
        ),
         topplayedBox(
          
          image: "assets/images/topplayed.png",
          imagetow: "assets/images/Elli.png", 
          date: "18 Dce - 3 hr 03 min",
          name: "إذاعة ثمانية",
          title: "كيف تنجح العلاقات مع ياسر الحزيمي",
        ),
      ],
    );
  }
}
