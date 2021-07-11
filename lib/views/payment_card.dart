import 'package:aduaba_fresh/views/account_details.dart';
import 'package:aduaba_fresh/views/discover/discover_screen.dart';
import 'package:aduaba_fresh/views/homepage.dart';
import 'package:aduaba_fresh/widgets/reusable_button_no_img.dart';
import 'package:aduaba_fresh/widgets/reusable_form_field.dart';
import 'package:aduaba_fresh/widgets/reusable_box_header.dart';
import 'package:aduaba_fresh/widgets/form_field_label.dart';
import 'package:flutter/material.dart';

class PaymentCard extends StatefulWidget {
  const PaymentCard({ Key key }) : super(key: key);
  static String id = 'payment_card';

  @override
  _PaymentCardState createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedItemColor: Colors.green,
        unselectedItemColor: Color(0xFFDEDEDE),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: 'home',
            icon: InkWell(
              onTap: () {
                Navigator.pushNamed(context, HomePage.id);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Icon(Icons.home_outlined),
              ))
            ),
            BottomNavigationBarItem(
            label: 'search',
            icon: InkWell(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => DiscoverScreen()),
                //   );
                // Navigator.pushNamed(context, AccountDetails.id);
              },
              child: Icon(Icons.search))
            ),
            BottomNavigationBarItem(
            label: 'option',
            icon: InkWell(
              onTap: () {
                Navigator.pushNamed(context, AccountDetails.id);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: Icon(Icons.more_horiz),
              ))
            ),
        ],
        // currentIndex: selectedIndex,
        // onTap: _onItemTapped,

        
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
          ReusableBoxHeader(
            onTap: () {
              Navigator.pushNamed(context, AccountDetails.id);
            },
            text: 'Payment',
          ),
          SizedBox(height: 48.0,),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('My Cards',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                color: Color(0xFF10151A)
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    child: Row(children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Image.asset('assets/images/visa.png')),
                      SizedBox(width: 23.57,),
                      Text('1009 •••• •••• 2017'),
                      Spacer(),
                      IconButton(icon: Icon(Icons.delete_outline), 
                      onPressed: () {})
                    ],),
                  );
                }
                ),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 48.0),
            child: ReusableButtonNoImg(
              primary: Color(0xFF3A953C),
              text: 'Add New Card',
              fontsize: 16.0,
              fontweight: FontWeight.w700,
              onpressed: () => showModalBottomSheet(
                context: context, 
                builder: (context) => AddCardBottomSheet()
              ),
            ),
          )

        ],),
      ),
    );
  }
}

class AddCardBottomSheet extends StatelessWidget {
  const AddCardBottomSheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32.0, left: 24.0, right: 24.0),
      child: Stack(children: [
        ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('New Card',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                color: Color(0xFF3C673D)
              ),
              ),
              IconButton(icon: Icon(Icons.clear), 
              onPressed: () {}
              )
            ],
          ),
          SizedBox(height: 32.0,),
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
            text: 'Name on card',
          ),
          SizedBox(height: 16.0),
          ReusableTextFormField(
            hintText: 'Search product',
          ),
          
        ],),
        Positioned(
          top: 371.0,
          left: 0,
          right: 0,
          child: ReusableButtonNoImg(
            onpressed: () {},
            primary: Color(0xFF3A953C),
            text: 'Save',
          ),
        )
      ],),
    );
  }
}