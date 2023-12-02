import 'package:flutter/material.dart';
import 'package:podio/screens/home/homeScreen/widget/customtextfiled.dart';

class homescreenappbar extends StatelessWidget {
  homescreenappbar({super.key, required this.title});
  final String title;
  bool home=true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
            Expanded(child:  custotextfiled(title: title,)),
            const SizedBox(width: 20,),
            Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color:const Color(0xffECF0FE)
            ),
            child: 
            GestureDetector(
              onTap: (){},
              child: Image.asset("assets/images/Frame.png"),
            ),),
            
            ],
          )
        ],
      ),
    );
  }
}