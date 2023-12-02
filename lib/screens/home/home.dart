import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:podio/constant.dart';
import 'package:podio/cubit/bottomnavbar/cubit.dart';
import 'package:podio/cubit/bottomnavbar/state.dart';
import 'package:podio/screens/home/homeScreen/homescreen.dart';

class home extends StatelessWidget {
  home({super.key});
  bool homeo = true;
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<bottomNavBar>(context);
    return BlocConsumer<bottomNavBar, bottomNavState>(
      listener: (context, state) {
        if (state is change) {
          homeo = state.home;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/profile.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        homeo
                            ? Image.asset("assets/images/Hello 👋,.png")
                            : SizedBox(
                                height: 0,
                              ),
                        Text(
                          "Abdelghfar Khirallah",
                          style: TextStyle(
                            fontWeight: homeo ? FontWeight.w400 : FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset("assets/images/Notification Icon.png")
                  ],
                ),
              ),
              systemOverlayStyle: SystemUiOverlayStyle.dark),
          body: cubit.screen[cubit.currentindex],
          bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: true,
              showUnselectedLabels: true,
              unselectedLabelStyle: TextStyle(
                  fontFamily: font2, fontSize: 12, fontWeight: FontWeight.w500),
              unselectedItemColor: const Color(0xffC9C9C9),
              selectedItemColor: const Color(0xff446DF6),
              onTap: (index) {
                cubit.changeScreen(index: index);
              },
              currentIndex: cubit.currentindex,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.house), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard_rounded), label: "Categories"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.bookmarks_outlined), label: "Library"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "Settings"),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.user), label: "Profile"),
              ]),
        );
      },
    );
  }
}
