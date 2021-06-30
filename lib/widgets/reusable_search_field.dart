import 'package:flutter/material.dart';

class ReusableSearchField extends StatelessWidget {
  ReusableSearchField({this.hintText});

  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.0,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0XFFBABABA),
            fontSize: 15.0,
          ),
          fillColor: Color(0XFFF7F7F7),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide.none,
        ),
      )),
    );
  }
}
