import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podio/constant.dart';
import 'package:podio/screens/home/homeScreen/widget/customEpisodes.dart';

class detils extends StatefulWidget {
  const detils({super.key});

  @override
  State<detils> createState() => _detilsState();
}

class _detilsState extends State<detils> {
  String Description =
      "The Futur is a podcast channel that is dedicated to exploring the future of UX/UI design. Hosted by experts in the field, this channel provides insightful discussions and interviews with leading designers, technologists, and innovators who are shaping the future of";
  bool readmore = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image(
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.35,
                      image: AssetImage("assets/images/future.png")),
                  Positioned(
                      top: 10,
                      left: 20,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                size: 24,
                                color: Colors.white,
                              )),
                          Text(
                            "The Futur",
                            style: TextStyle(
                              fontFamily: font2,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                          const CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.white,
                            child: Icon(
                              FontAwesomeIcons.share,
                              size: 20,
                              color: Color(0xff446DF6),
                            ),
                          )
                        ],
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Podcat by",
                      style: TextStyle(
                          fontFamily: font1,
                          color: Color(0xff00002A),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "The Futur",
                      style: TextStyle(
                          fontFamily: font2,
                          color: Color(0xff555555),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                          fontFamily: font1,
                          color: Color(0xff00002A),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      Description,
                      maxLines: 7,
                      style: TextStyle(
                          fontFamily: font2,
                          color: Color(0xff555555),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    readmore
                        ? Text(
                            Description,
                            maxLines: 7,
                            style: TextStyle(
                                fontFamily: font2,
                                color: Color(0xff555555),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        : SizedBox(
                            height: 0,
                          ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            readmore = !readmore;
                          });
                        },
                        child: readmore
                            ? Text(
                                "... less",
                                style: TextStyle(
                                    fontFamily: font2,
                                    color: Color(0xff446DF6),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              )
                            : Text(
                                "... Load more",
                                style: TextStyle(
                                    fontFamily: font2,
                                    color: Color(0xff446DF6),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              )),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "All Episodes",
                      style: TextStyle(
                          fontFamily: font1,
                          color: Color(0xff00002A),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                   
                    const customEpisodes(
                            image: "assets/images/episodes.png",
                            title: "UI Design Tips &..",
                            date: "22 JUL  - 1 hr 20 min",
                    ),const customEpisodes(
                            image: "assets/images/episodes.png",
                            title: "UI Design Tips &..",
                            date: "22 JUL  - 1 hr 40 min",
                    ),const customEpisodes(
                            image: "assets/images/episodes.png",
                            title: "UI Design Tips &..",
                            date: "22 JUL  - 1 hr 05 min",
                    ),const customEpisodes(
                            image: "assets/images/episodes.png",
                            title: "UI Design Tips &..",
                            date: "22 JUL  - 1 hr 10 min",
                    ),const customEpisodes(
                            image: "assets/images/episodes.png",
                            title: "UI Design Tips &..",
                            date: "22 JUL  - 1 hr 04 min",
                    ),const customEpisodes(
                            image: "assets/images/episodes.png",
                            title: "UI Design Tips &..",
                            date: "22 JUL  - 1 hr 18 min",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
