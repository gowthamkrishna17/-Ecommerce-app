import 'package:ecommerce_app/constant_widget/comstands.dart';
import 'package:ecommerce_app/view/favorite/favorite.dart';
import 'package:ecommerce_app/view/homeScreen/carousel_slider_home.dart';
import 'package:ecommerce_app/view/homeScreen/home_icon.dart';
import 'package:ecommerce_app/view/homeScreen/widget/home_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(12),
      children: [
        Container(
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    "Hi, Shammas",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Spacer(),
              home_icon(
                icon: Icons.favorite_border_outlined,
                ontap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (contex) => Favorite_screen()));
                },
              ),
              Kwidth10,
              Stack(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(171, 248, 238, 144),
                      ),
                      child: GestureDetector(
                        child: Icon(Icons.notifications_outlined),
                      )),
                  Positioned(
                      left: 10,
                      right: 0,
                      bottom: 20,
                      child: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 240, 88, 77),
                        radius: 4,
                      ))
                ],
              ),
            ],
          ),
        ),
        Text("Let's start shopping"),
        Kheight20,
        CupertinoSearchTextField(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black54,
            ),
            placeholderStyle: TextStyle(
              color: Colors.black54,
            )),
        Kheight20,
        CarouselSliderHome(),
        Kheight20,
        SizedBox(
          child: Column(
            children: [
              Category_text(
                title: "Categories",
                btnTitle: "See All",
                btnAction: () {},
              ),
              Kheight10,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 7,
                  children: [
                    circleAvatar(
                      imageUrl: 'assets/images/onamshirt.jpeg',
                      title: "Men",
                    ),
                    circleAvatar(
                      title: "Women",
                      imageUrl: 'assets/images/onam-pages_04.webp',
                    ),
                    circleAvatar(
                      title: "Food",
                      imageUrl: 'assets/images/Sadhya.jpg',
                    ),
                    circleAvatar(
                      title: "Gift",
                      imageUrl: 'assets/images/onacopa21.jpg',
                    ),
                    circleAvatar(
                      title: "Flowers",
                      imageUrl: 'assets/images/pookalam.jpg',
                    ),
                    circleAvatar(
                      imageUrl: 'assets/images/onamshirt.jpeg',
                      title: "Men",
                    ),
                  ],
                ),
              ),
              Kheight20,
              Category_text(
                  btnAction: () {}, btnTitle: "View All", title: "Top Selling"),
              Kheight10,
              home_row(),
              Kheight20,
              Category_text(
                  btnAction: () {}, btnTitle: "View All", title: "Best offers"),
              Kheight10,
              home_row(),
            ],
          ),
        )
      ],
    );
  }
}

class Category_text extends StatelessWidget {
  final String title;
  final VoidCallback btnAction;
  final String btnTitle;
  const Category_text(
      {super.key,
      required this.btnAction,
      required this.title,
      required this.btnTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: titleText18,
        ),
        Spacer(),
        TextButton(
            onPressed: btnAction,
            child: Text(
              btnTitle,
              style: TextStyle(color: Colors.black87, fontSize: 15),
            ))
      ],
    );
  }
}

class circleAvatar extends StatelessWidget {
  const circleAvatar({super.key, required this.title, required this.imageUrl});
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 33,
          backgroundImage: AssetImage(imageUrl),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 15, color: const Color.fromARGB(255, 88, 87, 87)),
        )
      ],
    );
  }
}
