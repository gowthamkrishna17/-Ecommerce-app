import 'package:ecommerce_app/constant_widget/comstands.dart';
import 'package:flutter/material.dart';

class topbar extends StatelessWidget {
  final String title;

  const topbar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: CatStyle,
        )
      ],
    );
  }
}
