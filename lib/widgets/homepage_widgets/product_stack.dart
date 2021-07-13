import 'dart:convert';

import 'package:aduaba_fresh/views/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:http/http.dart' as http;

class ProductStack extends StatelessWidget {
  ProductStack({this.image, this.manufacturer, this.description, this.amount, this.productId});
  final String image;
  final String manufacturer;
  final String description;
  final String amount;
  final String productId;
  // final Function onLiked;


    Future<void> addToWishList(String productId) async {
print(productId);
    var response = await http.post(Uri.parse("https://teamaduaba.azurewebsites.net/AddToWishList"), 
    body: jsonEncode({
      'productId': productId, 
      }),
      headers: {
      "Login":"application/json",
      "Content-Type":"application/json"
    }
      );
      if(response.statusCode == 200) {
        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Added to Wishlist")));
        print(response.body);
      }
 
}
Future<void> removeFromWishList(String productId) async {
print(productId);
    var response = await http.post(Uri.parse("https://teamaduaba.azurewebsites.net/Remove"), 
    body: jsonEncode({
      'wishListItemId': productId, 
      }),
      headers: {
      "Login":"application/json",
      "Content-Type":"application/json"
    }
      );
      if(response.statusCode == 200) {
        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Added to Wishlist")));
        print(response.body);
      }
 
}


  @override
  
  Widget build(BuildContext context) {
   
    return Container(
      width: 156.0,
      margin: EdgeInsets.only(right: 16.0),
      child: Stack(
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 156.0,
              height: 156.0,
              child: Image.network(image,
              fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 8.0),
            Text(manufacturer,
            style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w300
            ),
            ),
            SizedBox(height: 4.0,),
            SizedBox(
              width: 156.0,
              height: 48.0,
              child: Text(description,
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000)
              ),
              ),
            ),
            SizedBox(height: 8.0),

            Row(children: [
              Text(amount,
              style: TextStyle(
                color: Color(0xFFF39E28),
                fontSize: 13.0,
                fontWeight: FontWeight.w700,
              ),
              ),
              SizedBox(width: 4.0),
              Text('.',
              style: TextStyle(
                color: Color(0xFFD8D8D8),
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
              ),
              SizedBox(width: 4.0),
              Text('In stock',
              style: TextStyle(
                color: Color(0xFF3A953C),
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
              ),
              ),
            ],)
          ],),
          Positioned(
            top: 7.0,
            left: 125.5,
            right: 9.25,
            child: Material(
              color: Colors.transparent,
              elevation: 20,
              child: FavoriteButton(
                iconColor: Color(0xFFED111F),
                iconDisabledColor: Colors.white,
                iconSize: 30.0,
                valueChanged: (isfavourite) {
                  // addToWishList(product[index].id);

                  if(isfavourite) {
                    addToWishList(productId);
                  } else {
                    removeFromWishList(productId);
                  }
                },
              ),
            )
          )
        ]),
    );
  }
}