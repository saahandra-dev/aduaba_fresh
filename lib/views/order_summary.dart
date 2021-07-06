import 'dart:developer';

import 'package:aduaba_fresh/widgets/cancel_order.dart';
import 'package:aduaba_fresh/widgets/reusable_button_no_img.dart';
import 'package:aduaba_fresh/widgets/sms_bottomsheet.dart';

import 'package:aduaba_fresh/widgets/reusable_box_header.dart';
import 'package:flutter/material.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({ Key key }) : super(key: key);
  static String id = 'order_summary';

  @override
  _OrderSummaryState createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 60.0),
        child: ReusableButtonNoImg(
          text: 'Cancel Order',
          primary: Color(0xFFBB2F48),
          onpressed: () {
            showDialog(
              context: context, 
              builder: (context) {
                return CancelOrderDialog();
              }
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              ReusableBoxHeader(
                text: 'Order Summary',
                widget: SizedBox(height: 10.0,),
              ),
              SizedBox(height: 48.0,),
              Text('Your order code is: Z38-9811-K9',
              style: TextStyle(
              color: Color(0xFF999999),
              fontSize: 15.0,
              fontWeight: FontWeight.w700
              )
              ),
              SizedBox(height: 12.0,),
              Text('2 Items: total ( including delivery ) N32,000.00',
              style: TextStyle(
              color: Color(0xFF999999),
              fontSize: 13.0,
              fontWeight: FontWeight.w400
              )
              ),
              SizedBox(height: 32.0,),
              StepperWidget(
              title: 'Order placed on 26 July',
              subtitle: 'We have received your order',
              ),
              StepperWidget(
              title: 'Confirmed',
              subtitle: 'Order accepted on 26 July',
              ),
              StepperWidget(
              title: 'Order Shipped',
              subtitle: 'Estimated for 3rd Aug',
              ),

              Row(children: [
              Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF2902F),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFF2902F),
                  blurRadius: 5,
                ),
              ],
              ),
            ),
            SizedBox(width: 20.0,),
            Text('Delivered',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
              color: Color(0xFF10151A)
            ),
            ),
            
            ],),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 31.0),
              child: Text('Estimated for 3rd Aug',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF979797)
                ),
                ),
            ),
            
            ],),
          ),
        ),
      ),
      
    );
  }
}



class StepperWidget extends StatelessWidget {
  const StepperWidget({this.title, this.subtitle});
  final String title;
  final String subtitle;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFF2902F),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFF2902F),
                blurRadius: 5,
              ),
            ],
          ),
        ),
        SizedBox(width: 20.0,),
        Text(title,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w700,
          color: Color(0xFF10151A)
        ),
        )
        ],),
        SizedBox(height: 10.0,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 3.0),
            Container(
              height: 72,
              child: VerticalDivider(
                width: 2,
                color: Color(0xFFD8D8D8),
              ),
            ),
            SizedBox(width: 23.0,),
            Text(subtitle,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Color(0xFF979797)
            ),
            )
          ],
        ),
        SizedBox(height: 11.0,)
    ],);
  }
}