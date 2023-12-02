import 'package:flutter/material.dart';
import 'package:podio/screens/home/home.dart';
import 'package:podio/screens/splashScreen/widget/splashscreenbody.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToHome();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      backgroundColor:const Color(0xff446DF6),
      ),
      body:const splashbody(),
    );
  }

  Future<void> goToHome()async{
    Future.delayed(const Duration(seconds: 7),(){
      Navigator.pushAndRemoveUntil(context,
      MaterialPageRoute(builder: (context)=> home()), (route) => false);
    });
  }
}