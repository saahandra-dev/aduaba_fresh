import 'package:aduaba_fresh/models/products_marks.dart';
import 'package:flutter/material.dart';
import 'package:aduaba_fresh/models/product.dart';


class CartModel {
  final Product product;
  final int numOfItem;

  CartModel({@required this.product, @required this.numOfItem});
}

// Demo data for our cart

List<CartModel> demoCart = [
  CartModel(product: ProductsMock.productsList[0], numOfItem: 1),
  CartModel(product: ProductsMock.productsList[1], numOfItem: 1),
];