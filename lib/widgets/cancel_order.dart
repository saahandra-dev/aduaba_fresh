import 'package:aduaba_fresh/widgets/reusable_button_no_img.dart';
import 'package:flutter/material.dart';

class CancelOrderDialog extends StatelessWidget {
  const CancelOrderDialog({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    elevation: 0,
      child: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
            child: Column(children: [
              Text('Cancel Order',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700
              ),
              ),
              SizedBox(height: 16.0,),
              Text('Cancelling this order Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean hendrerit vel neque eget ultrices. ',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Color(0xFF999999)
              ),
              ),
              SizedBox(height: 32.0,),
              ReusableButtonNoImg(
                text: 'Yes. Cancel Order',
                primary: Color(0xFFBB2F48),
                onpressed: () {},
              ),
              SizedBox(height: 14.0,),
              ReusableButtonNoImg(
                text: 'No, Don’t Cancel Order',
                color: Color(0xFF10151A),
                primary: Color(0xFFFFFFFF),
                borderSide: BorderSide(
                  color: Color(0xFF000000),
                  width: 1,
                  style: BorderStyle.solid
                ),
                onpressed: () {},
              )
            ],),
          ),
        ),
      ),
    );
  }
}