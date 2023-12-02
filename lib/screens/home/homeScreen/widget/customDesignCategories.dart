import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podio/constant.dart';
import 'package:podio/screens/home/homeScreen/designCategorirsDetails.dart';

class customDesignCategories extends StatefulWidget {
   customDesignCategories({super.key, required this.image, required this.title, required this.name,required this.love});
  final  String image;
  final  String title;
  final  String name;
  bool love;

  @override
  State<customDesignCategories> createState() => _customDesignCategoriesState();
}

class _customDesignCategoriesState extends State<customDesignCategories> {
  bool play=true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const detils()));
      },
      child: Padding(
        padding:const EdgeInsets.symmetric(horizontal:20,vertical: 5),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 104,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow:  [
                BoxShadow(blurRadius: 20, spreadRadius: 1, color: Colors.grey.withOpacity(0.1))
              ],
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            child: Row(
              children: [
                Image.asset(widget.image)
                ,
                const SizedBox(
                  width: 7,
                )
                ,SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text(widget.title,
                    maxLines: 2,
                    style: TextStyle(
                      fontFamily: font2,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color:const Color(0xff00002A)
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    Text(widget.name,
                    maxLines: 2,
                    style: TextStyle(
                      fontFamily: font2,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color:const Color(0xff555555)
                    ),),
                  ],),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          widget.love=!widget.love;
                        });
                      },
                      child:widget.love?
                      Icon(Icons.favorite,color: Colors.red,size: 24,):Icon(FontAwesomeIcons.heart),
                    ),
                    Spacer(),
                    Text("20 Episode - 3.6K Subscriber",style: TextStyle(
                      fontFamily: font2,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff555555)
                    ),)
                  ],
                )
                ],
            ),
          ),
        ),
      ),
    );
  }
}
