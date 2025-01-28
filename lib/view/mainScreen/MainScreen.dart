import 'package:ecommerce_app/view/Profile_Screen/profile_screen.dart';
import 'package:ecommerce_app/view/cart_scrn/Cart.dart';
import 'package:ecommerce_app/view/categoriScreen/categori_screen.dart';
import 'package:ecommerce_app/view/homeScreen/home_Screen.dart';
import 'package:ecommerce_app/view/mainScreen/bottam_nav_bar.dart';

import 'package:flutter/material.dart';

final _screen = [
  HomeScreen(),
  CategoriScreen(),
  cart_screen(),
  ProfileScreen(),
];

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int index, _) {
              return _screen[index];
            }),
      ),
      bottomNavigationBar: const BottamNavBarr(),
    );
  }
}
