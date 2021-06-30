import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  UserName({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.w700,
      color: Color(0xFF000000)
    )
    );
  }
}
