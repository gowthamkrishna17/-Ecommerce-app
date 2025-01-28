import 'package:ecommerce_app/constant_widget/comstands.dart';
import 'package:flutter/material.dart';

class home_row extends StatelessWidget {
  const home_row({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: false,
          itemCount: 3,
          itemBuilder: (contex, index) {
            return GestureDetector(
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
                  width: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 140,
                        height: 130,
                        color: Colors.white,
                        child: Image.asset(
                          "assets/images/Sadhya.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Kheight5,
                      Text(
                        "onam Gift box",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Kheight5,
                      Text(
                        "RS.1500.00",
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
                            Icon(
                              Icons.more_vert,
                              color: Colors.grey,
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
          }),
    );
  }
}
