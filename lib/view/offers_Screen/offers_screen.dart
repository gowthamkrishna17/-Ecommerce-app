import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.brown,
          border: Border(top: BorderSide(color: Colors.black, width: 1))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Total"), Text('699.05')],
          ),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.amber,
            height: 40,
            minWidth: 300,
            onPressed: () {},
            child: Text("Checkout"),
          )
        ],
      ),
    );
  }
}
