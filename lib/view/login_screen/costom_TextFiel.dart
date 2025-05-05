import 'package:flutter/material.dart';

class CostomTextfiel extends StatelessWidget {
  final String text;
  final TextEditingController? controller;

  const CostomTextfiel({super.key, this.controller, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        label: Text(text),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
