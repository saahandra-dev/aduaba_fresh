
import 'package:aduaba_fresh/views/selected_category.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  CategoriesCard({this.title, this.boxColor, this.textColor, this.widget});

  final String title;
  final Color boxColor;
  final Color textColor;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
     return Container(
        margin: EdgeInsets.only(right: 8.0),
        width: 92,
        height: 50,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Align(
          child: Text(title,
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w700,
            color: textColor
          ),
          ),
        ),
      );
    
  }
}