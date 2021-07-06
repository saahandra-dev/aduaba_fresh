/*//import 'package:aduaba_app/screens/confirmation_screen.dart';
import 'package:aduaba_fresh_app/checkout/payment_option_screen.dart';
import 'package:aduaba_fresh_app/checkout/shipping_address_screen.dart';
import 'package:flutter/material.dart';

//import '../constants.dart';
//import 'card_selection_screen.dart';
//import 'home_screen.dart';

class CheckoutStepperScreen extends StatefulWidget {
  @override
  _CheckoutStepperScreenState createState() => _CheckoutStepperScreenState();
}

class _CheckoutStepperScreenState extends State<CheckoutStepperScreen> {
  int _n = 0;
  Widget _widget;

  // _n == 0
  // ? _widget = ShippingAddressTab()
  //     : _n == 1
  //   ? _widget = ConfirmationTab()
  //     : _n == 2
  //   ? _widget = PaymentTab()
  //     : Container(),

  Widget stepperScreen(n) {
    print(n);
    if (n == 0) {
      return _widget = ShippingAddressScreen();
    } else if (n == 1) {
      return _widget = PaymentOptionScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: stepperScreen(_n),
      bottomNavigationBar: _n == 2
          ? Container()
          : Padding(
            padding: EdgeInsets.only(bottom: 30, right: 20, left: 20),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: RaisedButton(
                color: Color(0xFF3A953C),
                textColor: Color(0xFFFFFFFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius. circular(10)),
                child: Text(
                  _n == 0 ? "Proceed To Payment" : "Pay Now",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF), 
                    fontSize: 16, 
                    fontWeight: FontWeight.w700, 
                    fontStyle: FontStyle.normal
                  ),
                ),
                onPressed: () {setState(() {
                  print(_n);
                  _n++;
                  print(_n);  
                  if (_n == 2) {}
                }
              );
            },
          ),
        ),
      ),
    );
  }
}*/