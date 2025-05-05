class Category {
  final String id;
  final String name;

  Category({required this.id, required this.name});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'].toString(),
      name: json['name'],
    );
  }
}

class Product {
  final String title;
  final double price;
  final String imageUrl;
  final String description;

  Product({
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'],
      price: json['price'].toDouble(),
      imageUrl: json['image'],
      description: json['description'],
    );
  }
}
