import 'package:ecommerce_app/constant_widget/comstands.dart';
import 'package:ecommerce_app/view/widgets/titles.dart';

import 'package:ecommerce_app/widgets/checkoutWidget.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> checkList = [];

class Orderscreen extends StatelessWidget {
  final String title;
  final String image;
  final String discrption;
  final double price;
  const Orderscreen(
      {super.key,
      required this.discrption,
      required this.title,
      required this.image,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SafeArea(child: topbar()),
            Expanded(
              flex: 15,
              child: Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Card(
                        shadowColor: Colors.blueGrey,
                        surfaceTintColor: Colors.amber,
                        color: Colors.white,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 150,
                              child: Image.network(image),
                            ),
                            Kwidth10,
                            Expanded(
                              flex: 2,
                              child: Column(
                                spacing: 8,
                                children: [
                                  Text(
                                    title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    discrption,
                                    style: TextStyle(),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "\$$price",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Kheight15,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          spacing: 10,
                          children: [
                            Text(
                              "Adress",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            TextField(
                              decoration:
                                  costomeinputDec('house name /building name'),
                            ),
                            TextField(
                              decoration: costomeinputDec('area'),
                            ),
                            TextField(
                              decoration: costomeinputDec('city'),
                            ),
                            TextField(
                              decoration: costomeinputDec(' state'),
                            ),
                            TextField(
                              decoration: costomeinputDec('pincode'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(bottom: 15, top: 5),
                width: double.infinity,
                decoration: BoxDecoration(
                    border:
                        Border(top: BorderSide(color: Colors.black, width: 1))),
                child: Column(
                  children: [
                    Text(
                      "$price-/only",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 20),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            top: 0, left: 25, right: 25, bottom: 0),
                        child: CheckoutButton(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(
                                        'Select payment',
                                        textAlign: TextAlign.center,
                                      ),
                                      content: SizedBox(
                                        height: 200,
                                        child: Column(
                                          children: [
                                            ListTile(
                                              onTap: () {},
                                              leading: Icon(Icons.money),
                                              title: Text('Gpay'),
                                              selectedTileColor: Colors.amber,
                                            ),
                                            ListTile(
                                              leading: Icon(Icons.payment),
                                              title: Text('Upi payent'),
                                            ),
                                            Spacer(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                MaterialButton(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      side: BorderSide(
                                                          color: Colors.amber,
                                                          width: 1)),
                                                  height: 40,
                                                  minWidth: 70,
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text("cancel"),
                                                ),
                                                CheckoutButton(
                                                  onTap: () {},
                                                  text: 'ListOrder',
                                                  width: 70,
                                                  hight: 40,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            text: 'continue')),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
