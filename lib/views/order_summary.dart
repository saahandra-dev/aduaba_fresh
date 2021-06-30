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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(children: [
          ReusableBoxHeader(
            text: 'Order Summary',
          )
        ],),
      ),
      
    );
  }
}