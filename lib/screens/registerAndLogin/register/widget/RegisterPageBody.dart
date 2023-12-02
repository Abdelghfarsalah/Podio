
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podio/constant.dart';
import 'package:podio/cubit/register/register_cubit.dart';
import 'package:podio/screens/home/home.dart';
import 'package:podio/screens/registerAndLogin/LoginPage/Loginpagescreen.dart';
import 'package:podio/screens/registerAndLogin/register/widget/TextFormFiled.dart';

class registerpagebody extends StatefulWidget {
  registerpagebody({super.key});

  @override
  State<registerpagebody> createState() => _registerpagebodyState();
}

class _registerpagebodyState extends State<registerpagebody> {
  bool password = true;
  var emailcontrolar = TextEditingController();
  var passwordcontrolar = TextEditingController();
  var usernamecontrolar = TextEditingController();
  var birthdatecontrolar = TextEditingController();
  var nationalityconterolar = TextEditingController();
  var nameconterolar = TextEditingController();
  String? email;
  String? password1;
  String? phone;
  String? name;
  String? birthDate;
  String? nationality;
  var key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Form(
        key: key,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const  SizedBox(
                height: 20,
              ),
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
                height: 10,
              ),
               Text(
                'Sign Up',
                style: TextStyle(
                        fontFamily: font1,
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    color: Colors.blue),
              ), 
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Welcome to our program, please Sign up .',
                style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 5,
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
                height: 10,
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
                          ? const Icon(FontAwesomeIcons.userLock)
                          : const Icon(FontAwesomeIcons.user)),
                  labal: 'Password',
                  onchange: (data) {
                    password1 = data;
                  },
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'Please Password is Required ';
                    }
                  }),const SizedBox(
                height: 10,
              ),
              TextfiledF(
                  controller: usernamecontrolar,
                  password: false,
                  hint: 'Enter PhoneNumber',
                  icon: IconButton(
                      onPressed: () {},
                      icon:const Icon(Icons.phone_android_outlined)),
                  labal: 'Phone Number',
                  onchange: (data) {
                    setState(() {
                      phone = data;
                    });
                  },
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'Please Phone Number is Required ';
                    }
                  }),
              const SizedBox(
                height: 10,
              ),
              TextfiledF(
                  controller: nameconterolar,
                  password: false,
                  hint: 'Enter Name',
                  icon: IconButton(
                      onPressed: () {},
                      icon:const Icon(FontAwesomeIcons.fileSignature)),
                  labal: 'Name',
                  onchange: (data) {
                    setState(() {
                      name = data;
                    });
                  },
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'Please name is Required ';
                    }
                  }),
              Row(
                children: [
                  Expanded(
                    child: TextfiledF(
                        controller: birthdatecontrolar,
                        password: false,
                        hint: 'Enter Your Birth Date',
                        icon: IconButton(
                            onPressed: () {},
                            icon: const Icon(FontAwesomeIcons.calendarDays)),
                        labal: 'Birth Date',
                        onchange: (data) {
                          setState(() {
                            birthdatecontrolar.text = data;
                          });
                          print(birthdatecontrolar.text = data);
                        },
                        ontap: () {
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime(2003),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2024))
                              .then((value) {
                            birthdatecontrolar.text = value.toString();
                            return birthDate = value.toString();
                          });
                        },
                        validator: (data) {
                          if (data!.isEmpty) {
                            return ' Birth Date is Required ';
                          }
                        }),
                  ),
                  Expanded(
                    child: TextfiledF(
                        controller: nationalityconterolar,
                        password: false,
                        hint: 'Enter Your Nationality',
                        icon: IconButton(
                            onPressed: () {},
                            icon:const Icon(FontAwesomeIcons.earthAfrica)),
                        labal: 'Nationality',
                        onchange: (data) {
                          setState(() {
                            nationality = data??'';
                          });
                        },
                        ontap: () {
                          // showCountryPicker(
                          //     context: context, onSelect: (DataColumn) {
                          //       nationalityconterolar.text=DataColumn.name;
                          //       nationality=DataColumn.name;
                          //     });
                        },
                        validator: (data) {
                          if (data!.isEmpty) {
                            return 'Please Nationality is Required ';
                          }
                        }),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    if (key.currentState!.validate()) {
                      BlocProvider.of<RegisterCubit>(context).register(
                        name: name!,
                        uid:email!,
                          phone: phone!,
                          birthData: birthDate!,
                          nationality: nationality!,
                          email: email!,
                          password: password1!);
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
                      child: BlocConsumer<RegisterCubit, RegisterState>(
                        listener: (context, state) {
                          
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                          
                        },
                        builder: (context, state) {
                          if (state is RegisterLoading) {
                            return const Center(child: CircularProgressIndicator(color: Colors.white,));
                          } else if (state is RegisterFauiler) {
                            return const Text('Failuer try again');
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
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'You already have an account ? ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      child: const Text(
                        'Log In ',
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
