import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podio/constant.dart';
import 'package:podio/screens/home/homeScreen/widget/appBarforhomescreen.dart';
import 'package:podio/screens/home/homeScreen/widget/customDesignCategories.dart';

class DesignCategory extends StatelessWidget {
  const DesignCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset("assets/images/Notification Icon.png"),
          )
        ],
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                )),
            Text(
              "Design",
              style: TextStyle(
                fontFamily: font2,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff000000),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          homescreenappbar(title: "Search for Channel"),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView(
              children: [
                customDesignCategories(
                  image: "assets/images/design/designCategoriy/Rectangle 40.png",
                  love: false,
                  name: "Vy Alechnavicius",
                  title: "vaexperience",
                ),
                customDesignCategories(
                  image: "assets/images/design/designCategoriy/Rectangle 41png.png",
                  love: false,
                  name: "The Futur",
                  title: "The Futur",
                ),
                customDesignCategories(
                  image: "assets/images/design/designCategoriy/Rectangle 42.png",
                  love: false,
                  name: "TEDx ",
                  title: "TEDx Talks",
                ),
                customDesignCategories(
                  image: "assets/images/design/designCategoriy/Rectangle 43.png",
                  love: false,
                  name: "Eugene Opperman",
                  title: "The Design of B...",
                ),
                customDesignCategories(
                  image: "assets/images/design/designCategoriy/Rectangle 44.png",
                  love: false,
                  name: "Roman Mars",
                  title: "99% Invisible",
                ),
                customDesignCategories(
                  image: "assets/images/design/designCategoriy/Rectangle 45.png",
                  love: false,
                  name: "Andy J. Pizza",
                  title: "Creative Pep ..",
                ),customDesignCategories(
                  image: "assets/images/design/designCategoriy/Rectangle 46.png",
                  love: false,
                  name: "Design Observer",
                  title: "Design Observer",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
