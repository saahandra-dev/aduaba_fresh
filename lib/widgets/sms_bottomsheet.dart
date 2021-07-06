
import 'package:aduaba_fresh/views/sign_in.dart';
import 'package:aduaba_fresh/widgets/reusable_button_no_img.dart';
import 'package:aduaba_fresh/widgets/reusable_form_field.dart';
import 'package:flutter/material.dart';

class ViaSMS extends StatelessWidget {
  const ViaSMS({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF000000).withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          shrinkWrap: true,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(
              'Enter 4 Digits Code', 
              style: TextStyle(
                color: Color(0XFF3C673D),
                fontSize: 24.0,
                fontWeight: FontWeight.w700
              ),
              
            ),
            
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.close,
              size: 30.0,
              ),
            )
          ],),
          SizedBox(height: 24.0,),
          Container(
            width: 262.0,
            height: 44.0,
            child: Text(
              'Enter the four digits code sent to your email address',
              style: TextStyle(
                color: Color(0XFF999999),
                fontSize: 17.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 48,),
          Container(
            child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              EnterNumberField(),
              SizedBox(width: 8.0,),
              EnterNumberField(),
              SizedBox(width: 8.0,),
              EnterNumberField(),
              SizedBox(width: 8.0,),
              EnterNumberField()
            ],),
          ),
          SizedBox(height: 163,),
          ReusableButtonNoImg(
            onpressed: () {},
            primary: Color(0XFF3A953C),
            text: 'Continue',

          ),
          SizedBox(height: 11,)
        ],),
      ),
    );
  }
}


class EnterNumberField extends StatelessWidget {
  const EnterNumberField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: 75.7,
        height: 47.0,
        child: TextFormField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
        fontSize: 15.0,
          ),
          fillColor: Color(0XFFF7F7F7),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide.none
          )
        ),
    ),
      ),
        );
  }
}