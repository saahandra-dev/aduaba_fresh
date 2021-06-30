import 'package:aduaba_fresh/widgets/reusableButton_noImg.dart';
import 'package:aduaba_fresh/widgets/reusableTextFormField.dart';
import 'package:aduaba_fresh/widgets/reusable_box_header.dart';
import 'package:aduaba_fresh/widgets/textFormFieldLabel.dart';
import 'package:flutter/material.dart';

class CheckoutPayment extends StatefulWidget {
  const CheckoutPayment({ Key key }) : super(key: key);
  static String id = 'checkout_payment';

  @override
  _CheckoutPaymentState createState() => _CheckoutPaymentState();
}

class _CheckoutPaymentState extends State<CheckoutPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          
          children: [
          ReusableBoxHeader(
            text: 'New Card',
          ),
          Expanded(
            child: Container(
              child: ListView(
                children: [
                SizedBox(height: 32.0,),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFE75A21),
                        borderRadius: BorderRadius.circular(12.99),
                        boxShadow: [ BoxShadow(
                          color: Color(0xFF000000).withOpacity(0.15),
                          offset: Offset(0.0, 5.0), //(x,y)
                          blurRadius: 20.0,
                          spreadRadius: 0.0
                        )
                        ]
                      ),
                      
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(31.0, 30.0, 29.0, 28.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Image.asset('assets/images/checkout_visa.png'),
                          SizedBox(height: 27.48,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            VisaCardText(
                              text: '3282',
                              fontSize: 15.09,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: VisaCardText(
                                text: '....',
                                fontSize: 24.15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: VisaCardText(
                                text: '....',
                                fontSize: 24.15,
                              ),
                            ),
                            VisaCardText(
                              text: '3282',
                              fontSize: 15.09,
                            ),
                          ],),
                          SizedBox(height: 28.5,),
                          VisaCardTextRow(
                            textLeft: 'Card Holder',
                            textRight: 'Expires',
                            fontSize: 10.0,
                          ),
                          SizedBox(height: 2.0,),
                          VisaCardTextRow(
                            textLeft: 'Aycan Doganlar',
                            textRight: '12/23',
                          )
                        ],),
                      )
                    ),
                  ),
                ),
                SizedBox(height: 49.0,),
                TextFormFieldLabel(
                  text: 'Name on card',
                ),
                SizedBox(height: 16.0),
                ReusableTextFormField(
                  hintText: 'Search product',
                ),
                SizedBox(height: 16.0),
                TextFormFieldLabel(
                  text: 'Card Number',
                ),
                SizedBox(height: 16.0),
                ReusableTextFormField(
                  hintText: 'Search product',
                ),
                SizedBox(height: 16.0,),
                TextFormFieldLabel(
                  text: 'Expiry Date',
                ),
                SizedBox(height: 16.0),
                ReusableTextFormField(
                  hintText: 'Search product',
                ),
                SizedBox(height: 16.0),
                TextFormFieldLabel(
                  text: 'CVV',
                ),
                SizedBox(height: 16.0),
                ReusableTextFormField(
                  hintText: 'Search product',
                ),
              ],),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 90.0),
            child: ReusableButtonNoImg(
              onpressed: () {},
              primary: Color(0xFF3A953C),
              text: 'Save',
            ),
          )
          ]),
      ),
      
    );
  }
}

class VisaCardTextRow extends StatelessWidget {
  const VisaCardTextRow({this.textLeft, this.textRight, this.fontSize});

  final String textLeft;
  final String textRight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(textLeft,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w400,
            color: Color(0xFFFFFFFF)
          ),
        ),
        Text(textRight,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w400,
            color: Color(0xFFFFFFFF)
          ),
        ),
      ],
    );
  }
}

class VisaCardText extends StatelessWidget {
  const VisaCardText({this.text, this.fontSize});

  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      color: Color(0xFFFFFFFF)
    ),
    );
  }
}