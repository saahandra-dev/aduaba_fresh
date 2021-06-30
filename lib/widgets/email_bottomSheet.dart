import 'package:aduaba_fresh/widgets/reusableTextFormField.dart';
import 'package:flutter/material.dart';

import 'reusableButton_noImg.dart';
import 'textFormFieldLabel.dart';

Widget bottomSheetEmail() => Padding(
  padding: const EdgeInsets.all(24.0),
  child: ListView(
    shrinkWrap: true,
    children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(
        'Reset Password', 
        style: TextStyle(
          color: Color(0XFF3C673D),
          fontSize: 24.0,
          fontWeight: FontWeight.w700
        ),
        
      ),
      
      Icon(Icons.close,
      size: 30.0,
      )
    ],),
    SizedBox(height: 24.0,),
    Container(
      width: 262.0,
      height: 44.0,
      child: Text(
        'Set the new password for your account so you can login and access the features',
        style: TextStyle(
          color: Color(0XFF999999),
          fontSize: 17.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
    SizedBox(height: 24.0,),
    TextFormFieldLabel(
      text: 'Password',
    ),
    SizedBox(height: 16.0,),
    ReusableTextFormField(
      hintText: 'Enter Password',
    ),
    SizedBox(height: 24.0,),
    TextFormFieldLabel(
      text: 'Confirm Password',
    ),
    SizedBox(height: 16.0,),
    ReusableTextFormField(
      hintText: 'Enter Password',
    ),
    SizedBox(height: 24.0,),
    ReusableButtonNoImg(
      onpressed: () {},
      primary: Color(0XFF3A953C),
      text: 'Save password',
      fontweight: FontWeight.w700,
      fontsize: 16.0,
    ),
    
  ],),
);