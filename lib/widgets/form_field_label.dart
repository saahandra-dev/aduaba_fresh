import 'package:flutter/material.dart';

class TextFormFieldLabel extends StatelessWidget {
  TextFormFieldLabel({this.text, this.color});

  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w700,
      color: color
    )
    );
  }
}