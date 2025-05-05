import 'package:ecommerce_app/apiServices/api_Services.dart';

import 'package:ecommerce_app/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  //product_model le Product classine connect cheyth
  List<Product> _products = [];
  bool _isLoading = false;

  List<Product> get products => _products;
  bool get isLoading => _isLoading;

  //filtering

  List<Product> get bestSelling =>
      _products.where((product) => product.category == "electronics").toList();

  List<Product> get bestOffers =>
      _products.where((product) => product.price < 50).toList();

  Future<void> LoadProducts() async {
    _isLoading = true;
    notifyListeners();
    //api service ne Productumayi connect cheyan
    _products = await ApiServices().fetchProducts();
    _isLoading = false;
    notifyListeners();
  }
}
