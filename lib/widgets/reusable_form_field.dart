import 'package:flutter/material.dart';

class ReusableTextFormField extends StatelessWidget {
   ReusableTextFormField({
     this.hintText, 
     this.validator, 
     this.obscureText, 
     this.controller, 
     this.suffixIcon, 
     this.onSaved, 
     this.key,
     this.initialValue,
     this.onChanged
  });

  final String hintText;
  final Function validator;
  final bool obscureText;
  final TextEditingController controller;
  final Widget suffixIcon;
  final Function onSaved;
  final Key key;
  final String initialValue;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.0,
      child: TextFormField(
        initialValue: initialValue,
        onChanged: onChanged,
        key: key,
        controller: controller,
        onSaved: onSaved,
        validator: validator,
        obscureText: hintText.contains('password') ? true : false,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
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