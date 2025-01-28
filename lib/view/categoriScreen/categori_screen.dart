import 'package:ecommerce_app/constant_widget/comstands.dart';
import 'package:ecommerce_app/view/widgets/titles.dart';

import 'package:flutter/material.dart';

class CategoriScreen extends StatelessWidget {
  const CategoriScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Kheight15,
        topbar(title: "Categories"),
        Kheight10,
        ListView(scrollDirection: Axis.vertical, shrinkWrap: true, children: [
          categori_section(
            title: 'Gift Box',
            imageUrl: 'assets/images/onacopa21.jpg',
          ),
          categori_section(
            title: 'Cloths',
            imageUrl: 'assets/images/onamshirt.jpeg',
          ),
          categori_section(
            title: "food",
            imageUrl: 'assets/images/Sadhya.jpg',
          ),
          categori_section(
            title: "Flowers",
            imageUrl: 'assets/images/pookalam.jpg',
          ),
        ])
      ]),
    );
  }
}

class categori_section extends StatelessWidget {
  final String title;
  final String imageUrl;
  const categori_section(
      {super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GestureDetector(
          child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 248),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 223, 219, 219),
                blurRadius: 10,
                spreadRadius: 2,
                blurStyle: BlurStyle.normal,
              )
            ]),
        height: 100,
        child: Row(
          children: [
            Kwidth10,
            Container(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                title,
                style: CatStyle,
              ),
            ),
            Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(40, 70),
                bottomLeft: Radius.elliptical(40, 65),
              ),
              child: Container(
                height: 100,
                width: 200,
                color: Colors.red,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
