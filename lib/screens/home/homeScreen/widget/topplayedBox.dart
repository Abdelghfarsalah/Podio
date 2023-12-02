import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podio/constant.dart';

class topplayedBox extends StatefulWidget {
  const topplayedBox(
      {super.key,
      required this.image,
      required this.title,
      required this.name,
      required this.date,
      required this.imagetow});
  final String image;
  final String title;
  final String name;
  final String date;
  final String imagetow;

  @override
  State<topplayedBox> createState() => _topplayedBoxState();
}

class _topplayedBoxState extends State<topplayedBox> {
  bool play = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 104,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(blurRadius: 20, spreadRadius: 0, color: Colors.grey)
            ],
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: [
              Image.asset(widget.image),
              const SizedBox(
                width: 7,
              ),
              SizedBox(
                width: 137,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      maxLines: 2,
                      style: TextStyle(
                          fontFamily: font2,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: const Color(0xff00002A)),
                    ),
                    Row(
                      children: [
                        Image.asset(widget.imagetow),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.name,
                          style: TextStyle(
                            fontFamily: font2,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff555555),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Text(
                      widget.date,
                      style: TextStyle(
                          fontFamily: font2,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xff555555)),
                    )
                  ],
                ),
              ),
              const Spacer(),
              CircleAvatar(
                  backgroundColor: const Color(0xffECF0FE),
                  radius: 22,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: const Color(0xff446DF6),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            play = !play;
                          });
                        },
                        child: play
                            ? const Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              )
                            : Image.asset("assets/images/play 26.png"),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
