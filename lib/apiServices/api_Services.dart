import 'dart:convert';

import 'package:ecommerce_app/model/product_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<Product>> fetchProducts() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      return data.map((e) => Product.fromJson(e)).toList();
    } else {
      print('Failed to load products. Status code: ${response.statusCode}');
      return [];
    }
  }
}
