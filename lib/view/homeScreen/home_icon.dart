import 'package:flutter/material.dart';

class home_icon extends StatelessWidget {
  final IconData icon;
  final VoidCallback ontap;
  const home_icon({super.key, required this.icon, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(171, 248, 238, 144),
        ),
        child: GestureDetector(
          onTap: ontap,
          child: Icon(icon),
        ));
  }
}
