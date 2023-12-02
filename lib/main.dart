import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:podio/cubit/Login/login_cubit.dart';
import 'package:podio/cubit/bottomnavbar/cubit.dart';
import 'package:podio/cubit/register/register_cubit.dart';
import 'package:podio/screens/registerAndLogin/register/registerPage.dart';
import 'package:podio/screens/splashScreen/splashscreen.dart';

void main() {
  runApp(const Podio());
}

class Podio extends StatelessWidget {
  const Podio({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => bottomNavBar(),
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => RegisterCubit(),
        ),
      ],
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:registerPage (),
      ),
    );
  }
}
