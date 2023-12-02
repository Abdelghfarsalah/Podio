import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class sectionpopuler extends StatefulWidget {
  const sectionpopuler({super.key});

  @override
  State<sectionpopuler> createState() => _sectionpopulerState();
}

class _sectionpopulerState extends State<sectionpopuler> {
  PageController controller = PageController();
  CarouselController carouselController = CarouselController();
  int page = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "Popular Channels",
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
        CarouselSlider(
            items: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    child: Image(

                        //height: MediaQuery.of(context).size.height*0.1,
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/images (1).png")),
                  ),
                ),
              ),
              const Image(image: AssetImage("assets/images/وعي.png")),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(16)),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    child: Image(
                        //height: MediaQuery.of(context).size.height*0.1,
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/images.png")),
                  ),
                ),
              )
            ],
            carouselController: carouselController,
            options: CarouselOptions(
                initialPage: page,
                enlargeCenterPage: true,
                viewportFraction: 0.85,
                onPageChanged: (v, ca) {
                  page=v;
                  setState(() {
                    
                  });
                },
                aspectRatio: 3 / 1.2,
                enableInfiniteScroll: false,
                enlargeFactor: 0.1,
                scrollPhysics: const BouncingScrollPhysics(),
                reverse: false)),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 4,
              width: page == 0 ? 72 : 24,
              decoration: BoxDecoration(
                  color: page == 0 ? Color(0xff446DF6) : Color(0xffECF0FE),
                  borderRadius: BorderRadius.circular(1)),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              height: 4,
              width: page == 1 ? 72 : 24,
              decoration: BoxDecoration(
                  color: page == 1 ? Color(0xff446DF6) : Color(0xffECF0FE),
                  borderRadius: BorderRadius.circular(1)),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              height: 4,
              width: page == 2 ? 72 : 24,
              decoration: BoxDecoration(
                  color: page == 2 ? Color(0xff446DF6) : Color(0xffECF0FE),
                  borderRadius: BorderRadius.circular(1)),
            ),
          ],
        )
      ],
    );
  }
}
