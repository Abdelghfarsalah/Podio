import 'package:flutter/material.dart';
import 'package:podio/constant.dart';
import 'package:podio/screens/home/homeScreen/widget/appBarforhomescreen.dart';
import 'package:podio/screens/home/homeScreen/widget/sectionPoular.dart';
import 'package:podio/screens/home/homeScreen/widget/sectioncategories.dart';
import 'package:podio/screens/home/homeScreen/widget/sectiontopPlayed.dart';
import 'package:podio/screens/home/homeScreen/widget/topplayedBox.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          homescreenappbar(title: "Search for episode, channel ....",),
          const SizedBox(
            height: 20,
          ),
          const sectionpopuler(),
          const SizedBox(
            height: 15,
          ),
          const sectiontopplayed(),const SizedBox(
            height: 15,
          ),
          const sectioncategories()
        ],
      ),
    );
  }
}
