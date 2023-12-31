
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podio/constant.dart';
import 'package:podio/cubit/Login/login_cubit.dart';
import 'package:podio/screens/home/home.dart';
import 'package:podio/screens/registerAndLogin/register/widget/TextFormFiled.dart';

class loginpagebody extends StatefulWidget {
  loginpagebody({super.key});

  @override
  State<loginpagebody> createState() => _loginpagebodyState();
}

class _loginpagebodyState extends State<loginpagebody> {
  bool password = true;
  var key = GlobalKey<FormState>();
  var emailcontrolar = TextEditingController();
  var passwordcontrolar = TextEditingController();
  String? email;
  String? password1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Form(
        key: key,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Podio',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        fontFamily: font1,
                        color: Color.fromARGB(255, 2, 50, 88)),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
               Text(
                'Sign In',
                style: TextStyle(
                        fontFamily: font1,
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    color: Colors.blue),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Welcome to our program, please Log in .',
                style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 40,
              ),
              TextfiledF(
                  controller: emailcontrolar,
                  password: false,
                  hint: 'Enter Your Email',
                  icon: IconButton(onPressed: () {}, icon: Icon(Icons.email)),
                  labal: 'Email',
                  onchange: (data) {
                    email = data;
                  },
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'Please Email is Required ';
                    }
                  }),
              const SizedBox(
                height: 40,
              ),
              TextfiledF(
                  controller: passwordcontrolar,
                  password: password,
                  hint: 'Enter Your Password',
                  icon: IconButton(
                      onPressed: () {
                        setState(() {
                          password = !password;
                        });
                      },
                      icon: password
                          ? Icon(FontAwesomeIcons.userLock)
                          : Icon(FontAwesomeIcons.user)),
                  labal: 'Password',
                  onchange: (data) {
                    password1 = data;
                  },
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'Please Password is Required ';
                    }
                  }),
              const SizedBox(
                height: 90,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    if (key.currentState!.validate()) {
                      BlocProvider.of<LoginCubit>(context)
                          .login(email: email!, password: password1!);
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.blue,
                            blurRadius: 20,
                            spreadRadius: BorderSide.strokeAlignCenter,
                            offset: Offset(0, 5))
                      ],
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue,
                    ),
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Center(
                      child: BlocConsumer<LoginCubit, LoginState>(
                        listener: (context, state) {
                          
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return home();
                            }));
                          
                        },
                        builder: (context, state) {
                          if (state is loginLoading) {
                            return const Center(
                                child: CircularProgressIndicator(
                              color: Colors.white,
                            ));
                          } else if (state is loginSuccess) {
                            return Text('success');
                          } else {
                            return const Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontFamily: 'RobotoSlab',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25,
                                  color: Colors.white),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'You already have an account ? ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Sign Up ',
                        style: TextStyle(
                            fontFamily: 'RobotoSlab',
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: Colors.blue),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
