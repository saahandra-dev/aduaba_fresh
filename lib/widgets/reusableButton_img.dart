import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({
  this.text, 
  this.primary, 
  this.color, 
  this.fontweight, 
  this.buttonImage, 
  this.borderSide, 
  this.sizedBox, 
  this.fontsize
  });

  final String text;
  final Color primary;
  final Color color;
  final FontWeight fontweight;
  final String buttonImage;
  final BorderSide borderSide;
  final sizedBox;
  final double fontsize;
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 47.0,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          ),
          side: borderSide,
        ), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/$buttonImage.png'),
            SizedBox(width: sizedBox,),
            Text(text,
            style: TextStyle(
              color: color,
              fontSize: fontsize,
              fontWeight: fontweight
            ),
            ),
          ],
        ),
        ),
    );
  }
}


