import 'package:flutter/material.dart';

class CardModel {
  String name;
  String cardNo;
  String expDate;
  String cardType;
  

  CardModel({this.name, this.cardNo, this.expDate, this.cardType, });
}

final List<CardModel> cards = [
  CardModel(
      cardNo: "3282526923323282",
      cardType: "VISA",
      name: "Aycan Doqanlar",
      expDate: "12/23"),
  CardModel(
      cardNo: "3282526923333282",
      cardType: "MasterCard",
      name: "Aycan Doqanlar",
      expDate: "12/23"),
  CardModel(
      cardNo: "3282526923343282",
      cardType: "VISA",
      name: "Aycan Doqanlar",
      expDate: "12/23")
 
];


