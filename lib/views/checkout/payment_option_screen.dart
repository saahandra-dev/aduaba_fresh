//import 'package:aduaba_fresh_app/models/address_model.dart';
//import 'package:aduaba_fresh_app/checkout/components/address_radio_item.dart';
import 'package:aduaba_fresh/views/checkout/components/new_card.dart';
import 'package:flutter/material.dart';



class PaymentOptionScreen extends StatefulWidget {
  @override
  _PaymentOptionScreenState createState() => _PaymentOptionScreenState();
}

class _PaymentOptionScreenState extends State<PaymentOptionScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Color(0xFFFFFFFF),
            padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                  icon: Icon(
                    Icons.arrow_back, color: Color(0xFF424347),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Checkout",
                  style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF819272),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15),        
                Stack(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset('assets/icons/filled.png')),
                    Positioned(
                      top: 9,
                      left: 15,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5 - 38,
                        child: Divider(
                          color: Color(0xFF3A953C),
                          thickness: 2,
                          height: 0,
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset('assets/icons/filled.png')),
                    Positioned(
                      top: 9,
                      right: 16,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5 - 45,
                        child: Divider(
                          color: Color(0xFF3A953C),
                          thickness: 2,
                          height: 0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset('assets/icons/outlined.png')
                    ),
                  ],
                ),
                SizedBox(height: 10),   
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Billing",
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 13,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Payment",
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 13,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Confirmation",
                        style: TextStyle(
                          color: Color(0xFF999999),
                            fontSize: 13,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text(
              "Payment",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Color(0xFF10151A)
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 90,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cash on Delivery ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF10151A),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 260,
                                    child: Text(
                                      "For Contactless Delivery we recommend go cashless and stay with Aduabe Fresh Pay",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.2,
                                        color: Color(0xFF999999),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                                Container(
                                  height: 15,
                                  child:
                                      TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        minimumSize: Size(50, 30),
                                        alignment: Alignment.centerLeft),
                                    child: Text(
                                      'MORE DETAILS +',
                                      style: TextStyle(
                                      color: Color(0xFF494846),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10),
                           ],
                        ),
                      ),
                      Radio(
                        value: 0,
                        groupValue: _index,
                        activeColor: Color(0xFFE75A21),
                        onChanged: (value) {
                          setState(() {
                            _index = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Divider(color: Colors.grey),
                  ),
                  Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Card Payment",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF10151A),
                        ),
                      ),
                      Radio(
                        value: 1,
                        groupValue: _index,
                        activeColor: Color(0xFFE75A21),
                        onChanged: (value) {
                          setState(() {
                            _index = value;
                          });
                        },
                      ),
                    ],
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Divider(color: Colors.grey),
                  ),
                  SizedBox(height: 70),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30, right: 20, left: 20),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: RaisedButton(
                        color: Color(0xFF3A953C),
                        textColor: Color(0xFFFFFFFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius. circular(10)
                        ),
                        child: Text(
                          "Pay Now",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF), 
                            fontSize: 16, 
                            fontWeight: FontWeight.w700, 
                            fontStyle: FontStyle.normal
                          ),
                        ),
                        onPressed: () {
                          Navigator.push( context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                              NewCard(),
                          ),
                        );}
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}