import 'package:flutter/material.dart';
import 'package:podio/screens/home/homeScreen/widget/appBarforhomescreen.dart';
import 'package:podio/screens/home/homeScreen/widget/sectionDesign.dart';
import 'package:podio/screens/home/homeScreen/widget/sectionEducation.dart';
import 'package:podio/screens/home/homeScreen/widget/sectionHistory.dart';
import 'package:podio/screens/home/homeScreen/widget/sectionProductivity.dart';
import 'package:podio/screens/home/homeScreen/widget/sectionReligion.dart';
import 'package:podio/screens/home/homeScreen/widget/sectionScience.dart';

class categories extends StatelessWidget {
  const categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:const BouncingScrollPhysics(),
      child: Column(
        children: [
          homescreenappbar(title: "Search for Category"),
          const SizedBox(height: 15,),
          const sectionDesign(),
          const SizedBox(height: 15,),
          const science(),
          const SizedBox(height: 15,),
          const Religion(),
          const SizedBox(height: 15,),
          const Productivity(),
          const SizedBox(height: 15,),
          const History(),
          const SizedBox(height: 15,),
          const Education(),
        ],
      ),
    );
  }
}