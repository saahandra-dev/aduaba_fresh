import 'package:aduaba_fresh/models/product.dart';
import 'package:flutter/material.dart';



class ProductsMock {
  static List<String> productsMarks = [
    'All',
    'Raw Fruits',
    'Spices',
    'Cosmetics',
    'Fruits & Vegetables',
    'Raw Food',
    'Bakery',
    
  ];

  static List<Product> productsList = [
    Product(
        id: 1,
        title: 'Emmanuel Produce',
        mark: 'All',
        price: 35000.00,
        description: dummyText,
        status: 'In stock',
        image:
            'assets/images/image_5.png',
        details: detailText,
        color: Color(0xFFE5E5E5),
        qty: 1),
    Product(
        id: 2,
        title: 'Emmanuel Produce',
        mark: 'All',
        price: 35000.00,
        description: dummyText,
        status: 'In stock',
        image:
            'assets/images/image_6.png',
        details: detailText,
        color: Color(0xFFE5E5E5),
        qty: 1),
    Product(
        id: 3,
        title: 'Emmanuel Produce',
        mark: 'All',
        price: 35000.00,
        description: dummyText,
        status: 'In stock',
        image:
            'assets/images/image_7.png',
        details: detailText,
        color: Color(0xFFE5E5E5),
        qty: 1),
    Product(
        id: 4,
        title: 'Emmanuel Produce',
        mark: 'All',
        price: 35000.00,
        description: dummyText,
        status: 'In stock',
        image:
            'assets/images/image_8.png',
        details: detailText,
        color: Color(0xFFE5E5E5),
        qty: 1),
    Product(
        id: 5,
        title: 'Emmanuel Produce',
        mark: 'All',
        price: 35000.00,
        description: dummyText,
        status: 'In stock',
        image:
            'assets/images/image_3.png',
        details: detailText,
        color: Color(0xFFE5E5E5),
        qty: 1),
    Product(
        id: 7,
        title: 'Emmanuel Produce',
        mark: 'All',
        price: 35000.00,
        description: dummyText,
        status: 'In stock',
        image:
            'assets/images/image_4.png',
        details: detailText,
        color: Color(0xFFE5E5E5),
        qty: 1),  
  ];
}

String dummyText =
    "Herbsconnect Organic Acai Berry Powder Freeze Dried";

String detailText =
    "Lal Qilla Diabetes and Obesity Basmati Rice 5kg. Using a unique technique during cultivation and processing, Lal Qilla has introduced a specially processed low G.I. parboiled rice. This remarkable rice helps rice lovers with diabetes to";