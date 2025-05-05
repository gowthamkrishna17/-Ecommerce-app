import 'package:ecommerce_app/apiServices/product_provider.dart';
import 'package:ecommerce_app/constant_widget/comstands.dart';

import 'package:ecommerce_app/view/detial_screen/product_Detial_Page.dart';

import 'package:ecommerce_app/view/favorite/favorite.dart';
import 'package:ecommerce_app/view/homeScreen/carousel_slider_home.dart';
import 'package:ecommerce_app/view/homeScreen/home_icon.dart';
import 'package:ecommerce_app/view/homeScreen/notification_screen.dart/notification_screen.dart';
import 'package:ecommerce_app/view/homeScreen/widget/home_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ProductProvider>(context, listen: false).LoadProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductProvider>(context);
    return ListView(
      padding: EdgeInsets.all(12),
      children: [
        Container(
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    "Hi",
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
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => NotificationScreen()));
                        },
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
              Category_text(btnAction: () {}, title: "Top Selling"),
              Kheight10,
              provider.isLoading
                  ? CircularProgressIndicator()
                  : SizedBox(
                      height: 300,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          // shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                          itemCount: provider.bestSelling.length,
                          itemBuilder: (context, index) {
                            final product = provider.bestSelling[index];
                            return HomeRow(
                              ontap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ProductDetialPage(
                                          title: product.name,
                                          imageUrl: product.imageUrl,
                                          description: product.discription,
                                          price: product.price,
                                        )));
                              },
                              name: product.name,
                              imageUrl: product.imageUrl,
                              price: product.price,
                            );
                          }),
                    ),
              Kheight20,
              Category_text(btnAction: () {}, title: "Best offers"),
              Kheight10,
              provider.isLoading
                  ? CircularProgressIndicator()
                  : SizedBox(
                      height: 300,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          // shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                          itemCount: provider.bestOffers.length,
                          itemBuilder: (context, index) {
                            final product = provider.bestOffers[index];
                            return HomeRow(
                              ontap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ProductDetialPage(
                                          title: product.name,
                                          imageUrl: product.imageUrl,
                                          description: product.discription,
                                          price: product.price,
                                        )));
                              },
                              name: product.name,
                              imageUrl: product.imageUrl,
                              price: product.price,
                            );
                          }),
                    ),
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

  const Category_text({
    super.key,
    required this.btnAction,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: titleText18,
        ),
        Spacer(),
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
