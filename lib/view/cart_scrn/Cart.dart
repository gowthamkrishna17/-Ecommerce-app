import 'package:ecommerce_app/constant_widget/comstands.dart';

import 'package:ecommerce_app/model/favorite_model/favoriteModel.dart';
import 'package:ecommerce_app/view/widgets/checkout_widget.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

List<Map<String, dynamic>> cartList = [];
double totalprice = 0.0;

double calculateTotalPrice() {
  double total = 0.0;
  for (var item in cartList) {
    double rate = item['price'];
    int quantity = item['quantity'] ?? 1; // Default to 1 if no quantity is set
    total += rate * quantity;
  }
  return total;
}

class cart_screen extends StatefulWidget {
  const cart_screen({super.key});

  @override
  State<cart_screen> createState() => _cart_screenState();
}

class _cart_screenState extends State<cart_screen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Favoritemodel>(context, listen: false);

    return Consumer<Favoritemodel>(builder: (context, model, child) {
      return Scaffold(
        body: Column(
          children: [
            Container(
              height: 640,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Kheight20,
                  Container(
                    child: Text(
                      "Cart",
                      style: CatStyle,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: cartList.length,
                      itemBuilder: (context, index) {
                        var item = cartList[index];
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          padding:
                              EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: radius10,
                              boxShadow: [kshodow]),
                          child: Column(
                            children: [
                              Container(
                                padding:
                                    EdgeInsets.only(top: 5, left: 5, right: 5),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: SizedBox(
                                        height: 80,
                                        width: 80,
                                        child: Image.network(
                                          item["image"],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 5),
                                      height: 100,
                                      width: 120,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item["title"],
                                            maxLines: 3,
                                            style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Kheight5,
                                          Spacer(),
                                          Text(
                                            ('\$${item['price'].toString()}'),
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.green),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Rounded_btn(
                                      btnAction: provider.decrement,
                                      iconadd: Icons.remove,
                                    ),
                                    Kwidth10,
                                    Consumer<Favoritemodel>(
                                        builder: (context, countval, child) {
                                      return Text(
                                        ("${provider.quantity}"),
                                        style: titleText18,
                                      );
                                    }),
                                    Kwidth10,
                                    Rounded_btn(
                                      btnAction: provider.increment,
                                      iconadd: Icons.add,
                                    ),
                                    Kwidth5
                                  ],
                                ),
                              ),
                              Kheight10,
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: colorgrey,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.delete_outline,
                                          color: Colors.black,
                                          size: 22,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              cartList.removeAt(index);
                                            });
                                          },
                                          child: Text(
                                            "Remove",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                              fontSize: 13,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 52,
                                    width: 1,
                                    color: colorgrey,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.shopping_bag_outlined,
                                          color: Colors.black,
                                          size: 22,
                                        ),
                                        Kwidth5,
                                        Text(
                                          "Add to cart",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                            fontSize: 13,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            checkout_sec()
          ],
        ),
      );
    });
  }
}

class Rounded_btn extends StatelessWidget {
  final IconData iconadd;
  final VoidCallback btnAction;

  const Rounded_btn(
      {super.key, required this.iconadd, required this.btnAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
            width: 2, color: const Color.fromARGB(255, 221, 138, 132)),
        color: const Color.fromARGB(255, 240, 201, 198),
      ),
      child: InkWell(onTap: btnAction, child: Icon(iconadd)),
    );
  }
}
