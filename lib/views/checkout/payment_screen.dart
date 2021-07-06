import 'package:aduaba_fresh/models/card_model.dart';
import 'package:aduaba_fresh/views/checkout/components/payment_card.dart';
import 'package:aduaba_fresh/views/checkout/confirmation_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
          SizedBox(height: 20),
          Padding(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Payment",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xFF10151A)),
        ),
        TextButton.icon(           
            icon: Icon(
              Icons.add,
              color: Color(0xFF3E3E3E),
              size: 18,
            ),
            label: Text(
              "Add Address",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Color(0xFF3E3E3E)
                ),
            ),
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) {
                return StatefulBuilder(
                  builder: (BuildContext context, StateSetter setModalState) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.66,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                    child: Container(
                         child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "New Card",
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color(0xFF3A953C),
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  IconButton(
                                    alignment: Alignment.topLeft,
                                    icon: Icon(Icons.close), 
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                              SizedBox( height: 20),
                              Text(
                                "Name on card",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF10151A),
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(height: 15),
                              buildInputField(text: "Avcan Doqanlar"),
                              SizedBox(height: 15), 
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: MediaQuery.of(context).size.width,
                                ),
                                child: Text(
                                  "Card Number",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF10151A),
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                              SizedBox( height: 15),
                              buildInputField(text: "3282 •••• •••• 3282"),
                              SizedBox( height: 15),                      
                              Text(
                                "Expiry Date",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF10151A),
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(height: 15),
                              buildInputField(text: "12/23"),
                              SizedBox(height: 15), 
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: MediaQuery.of(context).size.width,
                                ),
                                child: Text(
                                  "Card type",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF10151A),
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                              SizedBox( height: 15),
                              buildInputField(text: "VISA"),
                          SizedBox(height: 30),               
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: RaisedButton(
                              color: Color(0xFF3A953C),
                              textColor: Color(0xFFFFFFFF),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius. circular(10)
                              ),
                              child: Text(
                                "Save",
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF), 
                                  fontSize: 16, 
                                  fontWeight: FontWeight.w700, 
                                  fontStyle: FontStyle.normal
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              );});});
              }
            ),
          ],
        ),
      ),    
      SingleChildScrollView(child: PaymentCard()),
      Padding(
        padding: EdgeInsets.fromLTRB(20, 60, 20, 30),
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                    ConfirmationScreen(),
                ),
              );
            },
          ),
        ),
      ),
      ],),
    );
  }
}

  
Widget buildInputField(
    {String text,
    TextEditingController controller,
    Function(String) onChange,
    Function(String) validate}) {
  return TextFormField(
    autofocus: false,
    cursorColor: Color(0xFF10151A),
    style: TextStyle(
      fontSize: 15, 
      color: Color(0xFF10151A), 
      fontWeight: FontWeight.w700
    ),
    onChanged: onChange,
    validator: validate,
    controller: controller,
    maxLines: null,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 13.5, vertical: 16),
      hintText: text,
      hintStyle: TextStyle(
        color: Color(0xFFBABABA), 
        fontWeight: FontWeight.w400, 
        fontSize: 15
      ),
      filled: true,
      fillColor: Color(0xFFF7F7F7),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
    ),
  );
}