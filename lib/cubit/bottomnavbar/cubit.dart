import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:podio/cubit/bottomnavbar/state.dart';
import 'package:podio/screens/home/homeScreen/categories.dart';
import 'package:podio/screens/home/homeScreen/homescreen.dart';
import 'package:podio/screens/home/homeScreen/liberary.dart';
import 'package:podio/screens/home/homeScreen/profile.dart';
import 'package:podio/screens/home/homeScreen/settings.dart';

class bottomNavBar extends Cubit<bottomNavState> {
  bottomNavBar() : super(initial());
  
  int currentindex=0;
  List<Widget> screen=[
  homescreen(),
  categories(),
  Library(),
  settings(),
  profile(),
  ];
  void changeScreen({required int  index}){
    currentindex=index;
    if(index==0)
    emit(change(home: true));
    else
    emit(change(home: false));
  }
}