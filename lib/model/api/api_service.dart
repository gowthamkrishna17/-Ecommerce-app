import 'dart:convert';

// import 'package:ecommerce_app/model/api/

import 'api_model.dart';

import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://fakestoreapi.com';

  // Fetch categories
  Future<List<Category>> fetchCategories() async {
    final response = await http.get(Uri.parse('$baseUrl/products/categories'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data
          .map((category) =>
              Category.fromJson({'id': category, 'name': category}))
          .toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }

  // Fetch products by category
  Future<List<Product>> fetchProductsByCategory(String category) async {
    final response =
        await http.get(Uri.parse('$baseUrl/products/category/$category'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }

  fetchProducts() {}
}
