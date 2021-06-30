

import 'package:flutter/material.dart';

class ReusableBoxHeader extends StatelessWidget {
  ReusableBoxHeader({this.onTap, this.text, this.widget});

  final Function onTap;
  final String text;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            offset: Offset(0.0, 2.0), //(x,y)
            blurRadius: 20.0,
            spreadRadius: 0.0
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 45.0, 0, 17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Align(
    alignment: Alignment.topLeft,
    child: InkWell(
        onTap: onTap,
        child: Icon(Icons.west_sharp)
        )
    ),
    SizedBox(height: 16,),
    Text(text,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
        color: Color(0xFF819272)
      ),
    ),
    // SizedBox(height: heightSpacer,),
    Container(
      child: widget,
    )

        ],),
      ),
    );
  }
}