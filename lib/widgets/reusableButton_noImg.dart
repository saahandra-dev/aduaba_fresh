import 'package:flutter/material.dart';

class ReusableButtonNoImg extends StatelessWidget {
  const ReusableButtonNoImg({
  this.text,
  this.primary,  
  this.color, 
  this.fontweight, 
  this.buttonImage,
  this.borderSide, 
  this.fontsize, 
  this.onpressed
  });

  final String text;
  final Color primary;
  final Color color;
  final FontWeight fontweight;
  final Image buttonImage;
  final BorderSide borderSide;
  final double fontsize;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 47.0,
      child: ElevatedButton(
        onPressed: 
          onpressed,
        style: ElevatedButton.styleFrom(
          primary: primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          ),
          side: borderSide,
        ), 
        child: Text(text,
        style: TextStyle(
          color: color,
          fontSize: fontsize,
          fontWeight: fontweight
        ),
        ),
        ),
    );
  }
}


