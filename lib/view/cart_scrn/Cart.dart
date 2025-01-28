import 'package:ecommerce_app/constant_widget/comstands.dart';

import 'package:ecommerce_app/model/favorite_model/favoriteModel.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cart_screen extends StatelessWidget {
  const cart_screen({super.key});

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
                    child: ListView.separated(
                      // scrollDirection: Axis.vertical,
                      separatorBuilder: (BuildContext context, int index) =>
                          Kheight15,
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                          decoration: BoxDecoration(
                              color: Colors.white,
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
                                      child: Container(
                                        height: 80,
                                        width: 80,
                                        child: Image.asset(
                                          'assets/images/onacopa21.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 5),
                                      height: 80,
                                      width: 120,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Onam Gift box',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Kheight5,
                                          Text(
                                            "medium",
                                            style: TextStyle(
                                              fontSize: 13,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            ("RS.${provider.prize.toInt()}"),
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    rounded_btn(
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
                                    rounded_btn(
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
                                        Text(
                                          "Remove",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                            fontSize: 13,
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

class checkout_sec extends StatelessWidget {
  const checkout_sec({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [kshodow],
          border: Border(top: BorderSide(color: colorgrey))),
      child: Column(
        children: [
          Kheight15,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              Consumer<Favoritemodel>(builder: (context, provider, child) {
                return Text(
                  "\$ ${provider.total}.00",
                  style: CatStyle,
                );
              })
            ],
          ),
          Kheight10,
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.amber,
            height: 50,
            minWidth: 300,
            onPressed: () {},
            child: Text('CheckOut'),
          )
        ],
      ),
    );
  }
}

class rounded_btn extends StatelessWidget {
  final IconData iconadd;
  final VoidCallback btnAction;

  const rounded_btn(
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
