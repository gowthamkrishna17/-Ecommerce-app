// view_models/favoritemodel.dart
import 'package:ecommerce_app/model/cart_screen/cartitem.dart';
import 'package:flutter/material.dart';

class Favoritemodel extends ChangeNotifier {
  List<Product> products = [
    Product(name: 'Item 1', price: 100),
    Product(name: 'Item 2', price: 200),
    Product(name: 'Item 3', price: 150),
  ];

  // Increment quantity of a specific product
  void increment(int index) {
    products[index].quantity++;
    notifyListeners(); // Notify the View to update
  }

  // Decrement quantity of a specific product
  void decrement(int index) {
    if (products[index].quantity > 0) {
      products[index].quantity--;
      notifyListeners(); // Notify the View to update
    }
  }

  // Calculate the total price for all products in the list
  int get totalAmount {
    int total = 0;
    for (var product in products) {
      total += product.total;
    }
    return total;
  }
}
