import 'package:flutter/material.dart';

class Product {
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

  Product({this.id, this.title, this.mark, this.price, this.description, this.status, this.image, this.details, this.color, this.qty, this.isSelected = false, Product product});
}