import 'package:ecommerce_app/constant_widget/comstands.dart';
import 'package:flutter/material.dart';

class topbar extends StatelessWidget {
  final String title;
  final bool showbckbutton;

  const topbar({super.key, this.title = '', this.showbckbutton = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (showbckbutton)
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios)),
        if (showbckbutton) Kwidth10,
        Text(
          title,
          style: CatStyle,
        )
      ],
    );
  }
}
