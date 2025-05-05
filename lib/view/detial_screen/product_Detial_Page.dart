import 'package:ecommerce_app/constant_widget/comstands.dart';
import 'package:ecommerce_app/view/cart_scrn/Cart.dart';
import 'package:ecommerce_app/view/favorite/favorite.dart';

import 'package:ecommerce_app/view/homeScreen/home_icon.dart';
import 'package:ecommerce_app/view/order/checkout.dart';
import 'package:ecommerce_app/view/widgets/checkout_widget.dart';
import 'package:ecommerce_app/view/widgets/titles.dart';
import 'package:flutter/material.dart';

class ProductDetialPage extends StatefulWidget {
  final String title;
  final String imageUrl;
  final String description;
  final double price;
  const ProductDetialPage(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.description,
      required this.price});

  @override
  State<ProductDetialPage> createState() => _ProductDetialPageState();
}

bool color = true;
int quantity = 0;

class _ProductDetialPageState extends State<ProductDetialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SafeArea(child: topbar()),
                Kheight30,
                SizedBox(
                  width: 300,
                  height: 300,
                  child: Image.network(
                    widget.imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  widget.title,
                  style: titleText18,
                ),
                Text(
                  "\$${widget.price}",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.description,
                ),
                Spacer(),
                checkout_sec(ontap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Orderscreen(
                          discrption: widget.description,
                          title: widget.title,
                          image: widget.imageUrl,
                          price: widget.price)));
                })
              ],
            ),
            Positioned(
                top: 30,
                right: 5,
                child: Column(
                  children: [
                    home_icon(
                        icon: Icons.add_photo_alternate,
                        ontap: () {
                          setState(() {
                            cartList.add({
                              "image": widget.imageUrl,
                              "price": widget.price,
                              "title": widget.title,
                            });
                            // final isAlredyAdded = cartList.any((Element) =>
                            //     Element['image'] == widget.imageUrl &&
                            //     Element['price'] == widget.price &&
                            //     Element['title'] == widget.title);

                            // if (isAlredyAdded) {
                            //   cartList.removeWhere((Element) =>
                            //       Element['image'] == widget.imageUrl &&
                            //       Element['price'] == widget.price &&
                            //       Element['title'] == widget.title);
                            // } else {
                            //   cartList.add({
                            //     "image": widget.imageUrl,
                            //     "price": widget.price,
                            //     "title": widget.title,
                            //   });
                            // }
                          });
                        }),
                    Kheight10,
                    home_icon(
                        icon: Icons.favorite_outline,
                        ontap: () {
                          setState(() {
                            favList.add({
                              "image": widget.imageUrl,
                              'name': widget.title,
                              'price': widget.price
                            });
                          });
                        }),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
