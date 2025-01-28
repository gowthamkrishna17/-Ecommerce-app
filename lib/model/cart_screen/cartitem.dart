// models/product.dart
class Product {
  String name;
  int price;
  int quantity;

  Product({required this.name, required this.price, this.quantity = 0});

  int get total => price * quantity;
}
