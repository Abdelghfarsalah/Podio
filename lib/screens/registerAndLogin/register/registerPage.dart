import 'package:flutter/material.dart';
import 'package:podio/screens/registerAndLogin/register/widget/RegisterPageBody.dart';
class registerPage extends StatelessWidget {
  const registerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(child: registerpagebody()),
      
    );
  }
}