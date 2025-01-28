import 'package:ecommerce_app/constant_widget/comstands.dart';

import 'package:ecommerce_app/view/widgets/titles.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Kheight15,
          topbar(
            title: "Profile",
          ),
          Kheight20,
          Stack(
            children: [
              CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage('assets/images/218631.gif')),
              Positioned(
                  bottom: 1,
                  left: 70,
                  right: 0,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: colorAmber,
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
          Kheight10,
          Text(
            "Shammas",
            style: CatStyle,
          ),
          Text(
            "gowtham@gmail.com",
            style: TextStyle(
                fontSize: 17, color: colorAmber, fontWeight: FontWeight.w500),
          ),
          Kheight15,
          profile_widget(
            title: "Wish List",
            iconprofile: Icons.favorite_outline,
          ),
          profile_widget(
            title: "Order History",
            iconprofile: Icons.history,
          ),
          profile_widget(
            title: "Address",
            iconprofile: Icons.location_on_outlined,
          ),
          profile_widget(
            title: "Payment Methods",
            iconprofile: Icons.payments_outlined,
          ),
          profile_widget(
            title: "Log Out",
            iconprofile: Icons.logout,
          )
        ],
      ),
    );
  }
}

//boxes
class profile_widget extends StatelessWidget {
  final IconData iconprofile;
  final String title;

  const profile_widget(
      {super.key, required this.title, required this.iconprofile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // padding: EdgeInsets.all(10),
        height: 55,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              kshodow,
            ]),
        child: GestureDetector(
          child: Row(
            children: [
              Kwidth10,
              Icon(
                iconprofile,
                color: colorAmber,
              ),
              Kwidth10,
              Text(title),
              Spacer(),
              Icon(Icons.arrow_forward_ios_outlined),
              Kwidth10
            ],
          ),
        ),
      ),
    );
  }
}
