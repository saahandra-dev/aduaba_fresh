import 'package:flutter/material.dart';

class Products {
  int id;
  String title;
  String mark;
  double price;
  String description;
  String status;
  String image;
  String details;
  Color color;
  int qty;
  bool isSelected;

  Products({this.id, this.title, this.mark, this.price, this.description, this.status, this.image, this.details, this.color, this.qty, this.isSelected = false, Product product});
}


class Product {
  String name;
  String categoryId;
  String shortDescription;
  String longDescription;
  String imageUrl;
  String manufacturer;
  bool isLike;
  bool inStock;
  int quantity;
  double amount;
  bool bestSelling;
  bool featuredProduct;

  Product(
      {this.name,
      this.categoryId,
      this.shortDescription,
      this.longDescription,
      this.imageUrl,
      this.manufacturer,
      this.isLike,
      this.inStock,
      this.quantity,
      this.amount,
      this.bestSelling,
      this.featuredProduct});

   Product.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    categoryId = json['categoryId'];
    shortDescription = json['shortDescription'];
    longDescription = json['longDescription'];
    imageUrl = json['imageUrl'];
    manufacturer = json['manufacturer'];
    isLike = json['isLike'];
    inStock = json['inStock'];
    quantity = json['quantity'];
    amount = json['amount'];
    bestSelling = json['bestSelling'];
    featuredProduct = json['featuredProduct'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['categoryId'] = this.categoryId;
    data['shortDescription'] = this.shortDescription;
    data['longDescription'] = this.longDescription;
    data['imageUrl'] = this.imageUrl;
    data['manufacturer'] = this.manufacturer;
    data['isLike'] = this.isLike;
    data['inStock'] = this.inStock;
    data['quantity'] = this.quantity;
    data['amount'] = this.amount;
    data['bestSelling'] = this.bestSelling;
    data['featuredProduct'] = this.featuredProduct;
    return data;
  }
}