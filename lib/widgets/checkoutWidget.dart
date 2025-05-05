import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double hight;
  final double width;
  const CheckoutButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.hight = 50,
      this.width = 300});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.amber,
      height: hight,
      minWidth: width,
      onPressed: onTap,
      child: Text(text),
    );
  }
}
