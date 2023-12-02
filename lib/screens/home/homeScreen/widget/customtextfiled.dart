import 'package:flutter/material.dart';

class custotextfiled extends StatelessWidget {
  const custotextfiled({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 44,
      child: TextField(
        decoration: InputDecoration(
          hintText: title,
          hintStyle:const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xffC9C9C9)
          ),
          prefixIcon: GestureDetector(
            onTap: (){},
            child: Image.asset("assets/images/Vector.png"),
          ),
          border:const OutlineInputBorder(
              
              borderSide: BorderSide(
                color: Color(0xffDFE1E9)              ),
              borderRadius: BorderRadius.all(Radius.circular(6))),
        ),
      ),
    );
  }
}
