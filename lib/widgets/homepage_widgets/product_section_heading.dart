import 'package:flutter/material.dart';

class ProductSectionHeadings extends StatelessWidget {
  ProductSectionHeadings({this.title});

  final String title;
 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
          style: TextStyle(
            color: Color(0XFF3C673D),
            fontSize: 17.0,
            fontWeight: FontWeight.w700
          )
        ),
        Container(
          child: Row(
            children: [
              Text('View all',
                style: TextStyle(
                  color: Color(0XFF999999),
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400
                )
              ),
              SizedBox(width: 4,),
              Image.asset('assets/images/forward_arrow.png')
            ],
          ),
        ),
    ],);
  }
}