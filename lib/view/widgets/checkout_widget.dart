import 'package:ecommerce_app/model/favorite_model/favoriteModel.dart';

import 'package:flutter/material.dart';
import 'package:ecommerce_app/constant_widget/comstands.dart';
import 'package:provider/provider.dart';

class checkout_sec extends StatelessWidget {
  const checkout_sec({super.key, this.rate = "", this.ontap});
  final VoidCallback? ontap;
  final String rate;

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<Favoritemodel>(context, listen: false);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.black, width: 1))),
      child: Column(
        children: [
          Kheight10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total"),
              Consumer<Favoritemodel>(builder: (context, provider, child) {
                return Text(
                  // "${provider.total}",
                  rate,
                  style: CatStyle,
                );
              })
            ],
          ),
          Kheight5,
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.amber,
            height: 50,
            minWidth: 300,
            onPressed: ontap,
            child: Text("Checkout"),
          )
        ],
      ),
    );
  }
}
