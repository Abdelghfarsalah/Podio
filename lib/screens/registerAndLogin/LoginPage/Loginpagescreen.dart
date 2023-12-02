import 'package:flutter/material.dart';
import 'package:podio/screens/registerAndLogin/LoginPage/loginpagebody.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(child: loginpagebody()),
      
    );
  }
}