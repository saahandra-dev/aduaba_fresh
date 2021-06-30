import 'package:flutter/material.dart';

class ReusablePageTitle extends StatelessWidget {
  ReusablePageTitle({this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: Color(0xFF819272)
    ),
    );
  }
}