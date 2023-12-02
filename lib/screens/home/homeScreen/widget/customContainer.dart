import 'package:flutter/material.dart';
import 'package:podio/constant.dart';

class customcontainer extends StatelessWidget {
  const customcontainer({super.key,
  required this.abdo,
  required this.color, required this.title,  required this.image});
  final Color color;
  final String title;
  final String image;
  final bool abdo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        children: [
          Container(
            height: 124,
            width: 124,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: color
            ),
            child:abdo? Image(
              fit: BoxFit.fill,
              image: AssetImage(image),):Image.asset(image),
          ),
          SizedBox(height: 3,),
          Text(title,style: TextStyle(
            fontFamily: font2,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff00002A)
          ),)
        ],
      ),
    );
  }
}