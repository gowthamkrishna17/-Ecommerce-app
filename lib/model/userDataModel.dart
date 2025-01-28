// To parse this JSON data, do
//
//     final fetchUserData = fetchUserDataFromJson(jsonString);

import 'dart:convert';

FetchUserData fetchUserDataFromJson(String str) =>
    FetchUserData.fromJson(json.decode(str));

String fetchUserDataToJson(FetchUserData data) => json.encode(data.toJson());

class FetchUserData {
  BestOffers offers;
  Categories categories;
  BestOffers topSellingItems;
  BestOffers bestOffers;

  FetchUserData({
    required this.offers,
    required this.categories,
    required this.topSellingItems,
    required this.bestOffers,
  });

  factory FetchUserData.fromJson(Map<String, dynamic> json) => FetchUserData(
        offers: BestOffers.fromJson(json["offers"]),
        categories: Categories.fromJson(json["categories"]),
        topSellingItems: BestOffers.fromJson(json["top_selling_items"]),
        bestOffers: BestOffers.fromJson(json["best_offers"]),
      );

  Map<String, dynamic> toJson() => {
        "offers": offers.toJson(),
        "categories": categories.toJson(),
        "top_selling_items": topSellingItems.toJson(),
        "best_offers": bestOffers.toJson(),
      };
}

class BestOffers {
  String title;
  List<BestOffersItem> items;

  BestOffers({
    required this.title,
    required this.items,
  });

  factory BestOffers.fromJson(Map<String, dynamic> json) => BestOffers(
        title: json["title"],
        items: List<BestOffersItem>.from(
            json["items"].map((x) => BestOffersItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class BestOffersItem {
  int productId;
  String sku;
  int loyaltyEarningPoints;
  int minLoyaltyPointsRequired;
  String name;
  String description;
  String shortDescription;
  dynamic thumbnailImage;
  int stockQuantity;
  bool inStock;
  bool featuredTag;
  bool cancelAvailable;
  bool returnAvailable;
  bool replacementAvailable;
  bool cashOnDeliveryAvailable;
  int price;
  dynamic offerInfo;

  BestOffersItem({
    required this.productId,
    required this.sku,
    required this.loyaltyEarningPoints,
    required this.minLoyaltyPointsRequired,
    required this.name,
    required this.description,
    required this.shortDescription,
    required this.thumbnailImage,
    required this.stockQuantity,
    required this.inStock,
    required this.featuredTag,
    required this.cancelAvailable,
    required this.returnAvailable,
    required this.replacementAvailable,
    required this.cashOnDeliveryAvailable,
    required this.price,
    required this.offerInfo,
  });

  factory BestOffersItem.fromJson(Map<String, dynamic> json) => BestOffersItem(
        productId: json["product_id"],
        sku: json["sku"],
        loyaltyEarningPoints: json["loyalty_earning_points"],
        minLoyaltyPointsRequired: json["min_loyalty_points_required"],
        name: json["name"],
        description: json["description"],
        shortDescription: json["short_description"],
        thumbnailImage: json["thumbnail_image"],
        stockQuantity: json["stock_quantity"],
        inStock: json["in_stock"],
        featuredTag: json["featured_tag"],
        cancelAvailable: json["cancel_available"],
        returnAvailable: json["return_available"],
        replacementAvailable: json["replacement_available"],
        cashOnDeliveryAvailable: json["cash_on_delivery_available"],
        price: json["price"],
        offerInfo: json["offer_info"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "sku": sku,
        "loyalty_earning_points": loyaltyEarningPoints,
        "min_loyalty_points_required": minLoyaltyPointsRequired,
        "name": name,
        "description": description,
        "short_description": shortDescription,
        "thumbnail_image": thumbnailImage,
        "stock_quantity": stockQuantity,
        "in_stock": inStock,
        "featured_tag": featuredTag,
        "cancel_available": cancelAvailable,
        "return_available": returnAvailable,
        "replacement_available": replacementAvailable,
        "cash_on_delivery_available": cashOnDeliveryAvailable,
        "price": price,
        "offer_info": offerInfo,
      };
}

class Categories {
  String title;
  List<CategoriesItem> items;

  Categories({
    required this.title,
    required this.items,
  });

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        title: json["title"],
        items: List<CategoriesItem>.from(
            json["items"].map((x) => CategoriesItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class CategoriesItem {
  int categoryId;
  String categoryName;
  dynamic categoryImage;

  CategoriesItem({
    required this.categoryId,
    required this.categoryName,
    required this.categoryImage,
  });

  factory CategoriesItem.fromJson(Map<String, dynamic> json) => CategoriesItem(
        categoryId: json["category_id"],
        categoryName: json["category_name"],
        categoryImage: json["category_image"],
      );

  Map<String, dynamic> toJson() => {
        "category_id": categoryId,
        "category_name": categoryName,
        "category_image": categoryImage,
      };
}
