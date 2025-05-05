import 'package:flutter/material.dart';

const Kheight20 = SizedBox(
  height: 20,
);
const Kheight10 = SizedBox(
  height: 10,
);
const Kheight15 = SizedBox(
  height: 15,
);
const Kheight30 = SizedBox(
  height: 30,
);
const Kheight5 = SizedBox(
  height: 5,
);

const Kwidth10 = SizedBox(
  width: 10,
);
const Kwidth15 = SizedBox(
  width: 15,
);
const Kwidth20 = SizedBox(
  width: 20,
);
const Kwidth5 = SizedBox(
  width: 5,
);

const Kwidth30 = SizedBox(
  width: 30,
);
const CatStyle = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
const titleText18 = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

final radius10 = BorderRadius.circular(10);

final kshodow = BoxShadow(color: Colors.grey, blurRadius: 8);

//fonts and colors

const colorAmber = Color.fromARGB(255, 219, 172, 32);

const colorgrey = Colors.grey;
const greyColor = Color.fromARGB(255, 199, 199, 199);

const fwlogin = FontWeight.w600;

const kBolditemStyle = TextStyle(fontSize: 15, fontWeight: FontWeight.w800);

InputDecoration costomeinputDec(String label) {
  return InputDecoration(
    label: Text(label),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}
