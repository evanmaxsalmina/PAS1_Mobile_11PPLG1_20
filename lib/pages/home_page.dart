import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg1_20/controllers/bottom_nav_ctr.dart';
import 'package:pas1_mobile_11pplg1_20/pages/views/favorite.dart';
import 'package:pas1_mobile_11pplg1_20/pages/views/home.dart';
import 'package:pas1_mobile_11pplg1_20/pages/views/profile.dart';
import 'package:pas1_mobile_11pplg1_20/widget/my_navbottom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavCtr bottomNavCtr = Get.put(BottomNavCtr());

    final List<Widget> menus = [
      Home(),
      Favorite(),
      Profile(),
    ];

    return Obx(() {
      return Scaffold(
        body: PageTransitionSwitcher(
          transitionBuilder: (child, animation, secondaryAnimation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          child: menus[bottomNavCtr.selectedIndex.value],
        ),
        bottomNavigationBar: const MyNavBottom(), 
      );
    });
  }
}
