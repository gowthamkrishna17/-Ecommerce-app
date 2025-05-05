import 'package:ecommerce_app/constant_widget/comstands.dart';
import 'package:flutter/material.dart';

class HomeRow extends StatelessWidget {
  final String name;
  final String Discription;
  final String imageUrl;
  final double price;
  VoidCallback ontap;
  HomeRow({
    super.key,
    this.Discription = '',
    this.ontap = _defaultOnTap,
    required this.name,
    required this.imageUrl,
    this.price = 00,
  });
  static void _defaultOnTap() {}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 8),
              ],
              borderRadius: BorderRadius.circular(10)),
          height: 100,
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: ontap,
                child: Container(
                  width: 140,
                  height: 130,
                  color: Colors.white,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Kheight5,
              GestureDetector(
                onTap: ontap,
                child: Text(
                  name,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Kheight5,
              Text(
                "\$${price.toStringAsFixed(2)}",
                style: kBolditemStyle,
              ),
              Spacer(),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: const Color.fromARGB(255, 243, 224, 50),
                      size: 17,
                    ),
                    Text(
                      '4.6',
                      style: TextStyle(fontSize: 12),
                    ),
                    Kwidth5,
                    Text(
                      "86 Reviews",
                      style: TextStyle(fontSize: 12),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        PopupMenuButton(itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem(child: Text('jjkkjkj')),
                            PopupMenuItem(child: Text('jjkkjkj')),
                          ];
                        });
                      },
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Kheight10
            ],
          ),
        ),
      ),
    );
  }
}
