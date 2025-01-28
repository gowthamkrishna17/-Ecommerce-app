import 'package:flutter/material.dart';

class Favoritemodel extends ChangeNotifier {
  int quantity = 0;
  int total = 0;
  int prize = 10;

  get products => null;

  void increment() {
    quantity++;

    totalAmount();
    notifyListeners();
  }

  void decrement() {
    quantity--;
    totalAmount();
    notifyListeners();
  }

  void totalAmount() {
    total = quantity * prize;
    print(total);

    notifyListeners();
  }
}
