class Product {
  final int id;
  final String name;
  final String imageUrl;
  final double price;
  final String category;
  final String discription;

  Product(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.price,
      required this.discription,
      required this.category});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        imageUrl: json['image'],
        discription: json['description'],
        name: json['title'],
        price: (json['price'] as num).toDouble(),
        category: json['category']);
  }
}
